import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

import 'package:pelindo_apps/widgets/button_primary.dart';

class FormJoinCompany extends StatefulWidget {
  const FormJoinCompany({super.key});

  @override
  _FormJoinCompanyState createState() => _FormJoinCompanyState();
}

class _FormJoinCompanyState extends State<FormJoinCompany> {
  String? titleprojectFilePath;
  String? filemax5mbFilePath;
  String? descriptionFilePath;
  String? deedOfIncorporationFilePath;
  String? nibFilePath;
  String? businessLicenseFilePath;
  String? npwpFilePath;
  String? ownerIdentityFilePath;
  String? articlesOfAssociationFilePath;
  String? proofOfAssetOwnershipFilePath;
  String? specialPermitFilePath;
  String? bankAccountFilePath;
  List<String> otherRelevantDocumentsFilePaths = [];

  Future<void> pickFileAndAdd({
    required ValueChanged<String> onFilePicked,
  }) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'jpg',
        'jpeg',
        'png',
        'pdf',
        'doc',
        'docx',
        'mp4',
        'avi',
        'mov'
      ],
    );
    if (result != null && result.files.single.path != null) {
      onFilePicked(result.files.single.path!);
    }
  }

  Widget getFilePreview(String filePath,
      {double width = 100, double height = 80}) {
    final fileExtension = filePath.split('.').last.toLowerCase();
    if (['jpg', 'jpeg', 'png'].contains(fileExtension)) {
      return Image.file(File(filePath),
          fit: BoxFit.cover, width: width, height: height);
    } else if (['pdf'].contains(fileExtension)) {
      return const Center(
          child: Icon(Icons.picture_as_pdf, color: Colors.red, size: 50));
    } else if (['doc', 'docx'].contains(fileExtension)) {
      return const Center(
          child: Icon(Icons.description, color: Colors.blue, size: 50));
    } else if (['mp4', 'avi', 'mov'].contains(fileExtension)) {
      return const Center(
          child: Icon(Icons.videocam, color: Colors.green, size: 50));
    } else {
      return const Center(child: Icon(Icons.insert_drive_file, size: 50));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form Join For Company",
          style: TextStyle(
            fontFamily: 'PlusJakartaSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Please Fill the\nData Form Below.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
              const SizedBox(height: 16),
              buildEditableTextField(
                label: "Project Title",
                hintText: "Enter project title",
              ),
              const SizedBox(height: 16),
              buildUploadField(
                label: "File Max 5MB",
                filePath: filemax5mbFilePath,
                onFilePicked: (path) {
                  setState(() {
                    filemax5mbFilePath = path;
                  });
                },
              ),
              const SizedBox(height: 10),
              buildEditableTextField(
                label: "Description",
                hintText: "Enter project description",
                maxLines: 5,
              ),
              const SizedBox(height: 16),
              buildEditableTextField(
                  label: "Deed of Incorporation",
                  hintText: "Enter The Incorporations"),
              const SizedBox(height: 16),
              buildEditableTextField(label: "NIB", hintText: "Enter NIB"),
              const SizedBox(height: 16),
              buildUploadField(
                label: "Business License",
                filePath: businessLicenseFilePath,
                onFilePicked: (path) {
                  setState(() {
                    businessLicenseFilePath = path;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildUploadField(
                label: "NPWP",
                filePath: npwpFilePath,
                onFilePicked: (path) {
                  setState(() {
                    npwpFilePath = path;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildUploadField(
                label: "Owner or Director Identity Data",
                filePath: ownerIdentityFilePath,
                onFilePicked: (path) {
                  setState(() {
                    ownerIdentityFilePath = path;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildEditableTextField(
                  label: "Articles of Association and Bylaws(AD/ART)",
                  hintText: "Enter Articles of Association"),
              const SizedBox(height: 16),
              buildUploadField(
                label: "Proof of Asset Ownership",
                filePath: proofOfAssetOwnershipFilePath,
                onFilePicked: (path) {
                  setState(() {
                    proofOfAssetOwnershipFilePath = path;
                  });
                },
              ),
              const SizedBox(height: 16),
              buildEditableTextField(
                  label: "Special Permit", hintText: "Enter Special Permit"),
              const SizedBox(height: 16),
              buildEditableTextField(
                  label: "Bank Account", hintText: "Enter Bank Account"),
              const SizedBox(height: 16),
              buildOtherRelevantDocumentsField(),
              const SizedBox(height: 8),
              const Text(
                "If relevant, proof of legal status such as a statement from the court if you have ever been involved in a legal case.",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9E9E9E),
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: ButtonPrimary(
                  title: 'Send',
                  onTap: () {
                    Navigator.pushNamed(context, '/notifikasiapproval');
                    // Handle form submission
                  },
                  width: double.infinity, // Adjust width as needed
                  color: const Color(0xFF4B39EF),
                  borderRadius: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEditableTextField({
    required String label,
    required String hintText,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Plus Jakarta Sans',
              color: Colors.black,
            ),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hintText,
          ),
          style: const TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFF282828),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget buildUploadField({
    required String label,
    String? filePath,
    required ValueChanged<String> onFilePicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Plus Jakarta Sans',
              color: Colors.black,
            ),
            children: const [
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () => pickFileAndAdd(onFilePicked: onFilePicked),
          child: Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: filePath != null
                  ? getFilePreview(filePath)
                  : const Icon(Icons.add, color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildOtherRelevantDocumentsField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            text: "Other Relevant Documents",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Plus Jakarta Sans',
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ...otherRelevantDocumentsFilePaths.map((path) => Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: getFilePreview(path, width: 100, height: 80),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            otherRelevantDocumentsFilePaths.remove(path);
                          });
                        },
                      ),
                    ),
                  ],
                )),
            IconButton(
              icon: const Icon(Icons.add, color: Colors.grey),
              onPressed: () => pickFileAndAdd(
                onFilePicked: (path) {
                  setState(() {
                    otherRelevantDocumentsFilePaths.add(path);
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
