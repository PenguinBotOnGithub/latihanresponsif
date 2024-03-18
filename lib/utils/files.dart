import 'package:flutter/material.dart';

List<Map<String, dynamic>> files = List.generate(
    40,
    (index) => {
          "name": switch (index % 4) {
            3 => "image_$index",
            2 => "audio_$index",
            1 => "document_$index",
            _ => "folder_$index",
          },
          "icon": switch (index % 4) {
            3 => Icons.image,
            2 => Icons.audio_file,
            1 => Icons.edit_document,
            _ => Icons.folder
          }
        });
