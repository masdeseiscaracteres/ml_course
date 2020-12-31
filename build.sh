#!/usr/bin/env bash
BUILD_DIR=build
TEMP_DIR=build/temp
SRC_DIR=material
REFERENCE_FILE=template/reference.docx

# Convert notebooks to markdown
jupyter nbconvert --to markdown --output-dir=$TEMP_DIR $SRC_DIR/*.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/02_regularization.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/03_01_feature_selection_EDA.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/03_02_feature_selection_filter_methods.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/03_03_feature_selection_wrapper_embedded_methods.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/04_classification_and_regression_trees.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/05_random_forests.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/06_boosted_trees.ipynb
#jupyter nbconvert --to markdown --execute --ExecutePreprocessor.kernel_name="python3" --ExecutePreprocessor.timeout=3600 --output-dir=$TEMP_DIR $SRC_DIR/07_SVMs_and_kernel_methods.ipynb

# Convert markdown to docx
# first chapter
pandoc -f markdown-implicit_figures -o $BUILD_DIR/01_fundamentals.docx -t docx --toc --toc-depth=3 --reference-doc $REFERENCE_FILE $SRC_DIR/01_fundamentals.md
# rest of chapters
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/02_regularization.docx $TEMP_DIR/02_regularization.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/03_01_feature_selection_EDA.docx $TEMP_DIR/03_01_feature_selection_EDA.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/03_02_feature_selection_filter_methods.docx $TEMP_DIR/03_02_feature_selection_filter_methods.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/03_03_feature_selection_wrapper_embedded_methods.docx $TEMP_DIR/03_03_feature_selection_wrapper_embedded_methods.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/04_classification_and_regression_trees.docx $TEMP_DIR/04_classification_and_regression_trees.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/05_random_forests.docx $TEMP_DIR/05_random_forests.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/06_boosted_trees.docx $TEMP_DIR/06_boosted_trees.md
pandoc -f markdown-implicit_figures --resource-path $TEMP_DIR --reference-doc $REFERENCE_FILE -o $BUILD_DIR/07_SVMs_and_kernel_methods.docx $TEMP_DIR/07_SVMs_and_kernel_methods.md