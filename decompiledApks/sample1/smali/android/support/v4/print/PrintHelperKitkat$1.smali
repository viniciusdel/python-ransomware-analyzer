.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    move-object v6, v0

    invoke-direct {v6}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    if-eqz v1, :cond_0

    .line 267
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-interface {v1}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    .line 269
    :cond_0
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 202
    new-instance v8, Landroid/print/PrintDocumentInfo$Builder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v8

    move-object v6, v8

    .line 206
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 207
    move-object v8, v4

    move-object v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 208
    return-void

    .line 206
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 20

    .prologue
    .line 214
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    new-instance v14, Landroid/print/pdf/PrintedPdfDocument;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    move-object v6, v14

    .line 217
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v7, v14

    .line 220
    move-object v14, v6

    const/4 v15, 0x1

    :try_start_0
    invoke-virtual {v14, v15}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v14

    move-object v8, v14

    .line 222
    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v9, v14

    .line 224
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v15, v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v17, v9

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    move/from16 v18, v0

    invoke-static/range {v14 .. v18}, Landroid/support/v4/print/PrintHelperKitkat;->access$100(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v14

    move-object v10, v14

    .line 229
    move-object v14, v8

    invoke-virtual {v14}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v14

    move-object v15, v7

    move-object/from16 v16, v10

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 232
    move-object v14, v6

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    move-object v14, v6

    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v14, v15}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 239
    move-object v14, v5

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/print/PageRange;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    sget-object v18, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v18, v16, v17

    invoke-virtual {v14, v15}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :goto_0
    move-object v14, v6

    if-eqz v14, :cond_0

    .line 248
    move-object v14, v6

    invoke-virtual {v14}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 250
    :cond_0
    move-object v14, v3

    if-eqz v14, :cond_1

    .line 252
    move-object v14, v3

    :try_start_2
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    :cond_1
    :goto_1
    move-object v14, v7

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v14, v15, :cond_2

    .line 259
    move-object v14, v7

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    :cond_2
    return-void

    .line 241
    :catch_0
    move-exception v14

    move-object v11, v14

    .line 243
    :try_start_3
    const-string v14, "PrintHelperKitkat"

    const-string v15, "Error writing printed content"

    move-object/from16 v16, v11

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 244
    move-object v14, v5

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v14

    move-object v12, v14

    move-object v14, v6

    if-eqz v14, :cond_3

    .line 248
    move-object v14, v6

    invoke-virtual {v14}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 250
    :cond_3
    move-object v14, v3

    if-eqz v14, :cond_4

    .line 252
    move-object v14, v3

    :try_start_4
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 258
    :cond_4
    :goto_2
    move-object v14, v7

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v14, v15, :cond_5

    .line 259
    move-object v14, v7

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object v14, v12

    throw v14

    .line 253
    :catch_1
    move-exception v14

    move-object v8, v14

    goto :goto_1

    :catch_2
    move-exception v14

    move-object v13, v14

    goto :goto_2
.end method
