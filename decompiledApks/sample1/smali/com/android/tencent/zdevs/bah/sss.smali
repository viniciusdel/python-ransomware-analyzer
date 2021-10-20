.class public Lcom/android/tencent/zdevs/bah/sss;
.super Ljava/lang/Object;
.source "sss.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tencent/zdevs/bah/sss$100000000;,
        Lcom/android/tencent/zdevs/bah/sss$100000001;,
        Lcom/android/tencent/zdevs/bah/sss$100000002;,
        Lcom/android/tencent/zdevs/bah/sss$100000003;
    }
.end annotation


# static fields
.field static aa:I

.field static bb:I

.field public static final executorService:Ljava/util/concurrent/ExecutorService;

.field static hh:I

.field public static lstFile:Ljava/util/List;

.field static 彼岸花开:Z


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    sput v2, Lcom/android/tencent/zdevs/bah/sss;->bb:I

    const/4 v2, 0x0

    sput v2, Lcom/android/tencent/zdevs/bah/sss;->aa:I

    const/4 v2, 0x0

    sput v2, Lcom/android/tencent/zdevs/bah/sss;->hh:I

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/android/tencent/zdevs/bah/sss;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/tencent/zdevs/bah/sss;->lstFile:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 553
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFiles(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object v4, v9

    .line 472
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move-object v10, v4

    array-length v10, v10

    if-lt v9, v10, :cond_0

    :goto_1
    return-void

    .line 474
    :cond_0
    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 475
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 477
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 478
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_1

    .line 479
    move-object v9, v7

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 482
    :cond_1
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v7

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/."

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    const/16 v11, 0x2800

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    const/high16 v11, 0x3200000

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    .line 484
    sget-object v9, Lcom/android/tencent/zdevs/bah/sss;->lstFile:Ljava/util/List;

    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 486
    :cond_2
    move v9, v2

    if-nez v9, :cond_3

    .line 487
    goto/16 :goto_1

    .line 472
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 492
    :cond_4
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/."

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com."

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "miad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 495
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/tencent/zdevs/bah/sss;->jd(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_5

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "baidunetdisk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "download"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "dcim"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 497
    :cond_5
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Lcom/android/tencent/zdevs/bah/sss;->GetFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 10

    .prologue
    .line 386
    move-object v0, p0

    const-string v6, ""

    move-object v2, v6

    .line 387
    const-string v6, ""

    move-object v3, v6

    .line 388
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 396
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 389
    :cond_0
    move-object v6, v0

    move v7, v4

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 390
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 391
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 388
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_1
.end method

.method public static bz(Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    move-object v0, p0

    move-object v7, v0

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    move-object v2, v7

    .line 543
    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 544
    move-object v7, v3

    const v8, 0x7f020045

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v4, v7

    .line 547
    move-object v7, v2

    move-object v8, v4

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 551
    move-object v7, v5

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 26

    .prologue
    .line 261
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const/16 v21, 0x0

    check-cast v21, Ljava/io/FileInputStream;

    move-object/from16 v6, v21

    .line 262
    const/16 v21, 0x0

    check-cast v21, Ljava/io/FileOutputStream;

    move-object/from16 v7, v21

    .line 263
    const/16 v21, 0x0

    check-cast v21, Ljava/io/File;

    move-object/from16 v8, v21

    .line 264
    const/16 v21, 0x0

    check-cast v21, Ljava/io/File;

    move-object/from16 v9, v21

    .line 266
    :try_start_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v21

    .line 267
    new-instance v21, Ljava/io/File;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v4

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v21

    .line 268
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 269
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    .line 270
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    move-result v21

    .line 272
    :cond_0
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    move-result v21

    .line 273
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v6, v21

    .line 274
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v8

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v7, v21

    .line 275
    move-object/from16 v21, v2

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/sss;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v21

    move-object/from16 v14, v21

    .line 276
    new-instance v21, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v7

    move-object/from16 v24, v14

    invoke-direct/range {v22 .. v24}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v15, v21

    .line 277
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v16, v21

    .line 279
    :goto_0
    move-object/from16 v21, v6

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Ljava/io/FileInputStream;->read([B)I

    move-result v21

    move/from16 v25, v21

    move/from16 v21, v25

    move/from16 v22, v25

    move/from16 v17, v22

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 282
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_1
    :goto_1
    move-object/from16 v21, v6

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 293
    :goto_2
    move-object/from16 v21, v7

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 298
    :goto_3
    move-object/from16 v21, v8

    move-object/from16 v2, v21

    return-object v2

    .line 280
    :cond_2
    move-object/from16 v21, v15

    move-object/from16 v22, v16

    const/16 v23, 0x0

    move/from16 v24, v17

    :try_start_3
    invoke-virtual/range {v21 .. v24}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v21

    move-object/from16 v14, v21

    .line 285
    move-object/from16 v21, v14

    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v21

    move-object/from16 v10, v21

    .line 288
    move-object/from16 v21, v6

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 293
    :goto_4
    move-object/from16 v21, v7

    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 295
    :goto_5
    move-object/from16 v21, v10

    throw v21

    .line 288
    :catch_1
    move-exception v21

    move-object/from16 v19, v21

    .line 290
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 293
    :catch_2
    move-exception v21

    move-object/from16 v19, v21

    .line 295
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 288
    :catch_3
    move-exception v21

    move-object/from16 v19, v21

    .line 290
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 293
    :catch_4
    move-exception v21

    move-object/from16 v19, v21

    .line 295
    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static deleteDir(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, v2

    const/4 v8, 0x0

    if-eq v7, v8, :cond_0

    .line 25
    new-instance v7, Ljava/util/Timer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    move-object v5, v7

    .line 26
    move-object v7, v5

    new-instance v8, Lcom/android/tencent/zdevs/bah/sss$100000000;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/android/tencent/zdevs/bah/sss$100000000;-><init>(Landroid/content/Context;)V

    const v9, 0x927c0

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 42
    :cond_0
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 43
    move-object v7, v5

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    invoke-static {v7, v8, v9, v10}, Lcom/android/tencent/zdevs/bah/sss;->deleteDirWihtFile(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V

    .line 44
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/tencent/zdevs/bah/sss;->彼岸花开:Z

    return-void
.end method

.method public static deleteDirWihtFile(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v13, v0

    if-eqz v13, :cond_0

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    move-object v5, v13

    .line 51
    move-object v13, v5

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v6, v13

    .line 52
    move-object v13, v6

    invoke-static {v13}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 53
    move-object v13, v6

    move-object v14, v6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/io/File;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    check-cast v13, [Ljava/io/File;

    move-object v5, v13

    .line 54
    move-object v13, v5

    move-object v7, v13

    const/4 v13, 0x0

    move v8, v13

    .line 134
    :goto_1
    move v13, v8

    move-object v14, v7

    array-length v14, v14

    if-lt v13, v14, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    move-object v13, v7

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    .line 55
    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 56
    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sget v14, Lcom/android/tencent/zdevs/bah/MainActivity;->hzs:I

    if-lt v13, v14, :cond_3

    .line 57
    move-object v13, v10

    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sget v15, Lcom/android/tencent/zdevs/bah/MainActivity;->hzs:I

    sub-int/2addr v14, v15

    move-object v15, v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v10, v13

    .line 61
    :cond_3
    move v13, v2

    const/4 v14, 0x0

    if-ne v13, v14, :cond_7

    .line 62
    move-object v13, v9

    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v10

    sget-object v14, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    .line 64
    sget-object v13, Lcom/android/tencent/zdevs/bah/sss;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Lcom/android/tencent/zdevs/bah/sss$100000001;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v15 .. v19}, Lcom/android/tencent/zdevs/bah/sss$100000001;-><init>(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 93
    :cond_5
    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "miad"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 96
    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/tencent/zdevs/bah/sss;->jd(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_6

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "baidunetdisk"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "download"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "dcim"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 98
    :cond_6
    move-object v13, v9

    move-object v14, v1

    move v15, v2

    move-object/from16 v16, v3

    invoke-static/range {v13 .. v16}, Lcom/android/tencent/zdevs/bah/sss;->deleteDirWihtFile(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_2

    .line 134
    :catch_0
    move-exception v13

    move-object v11, v13

    goto/16 :goto_2

    .line 104
    :cond_7
    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v10

    sget-object v14, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    const/16 v15, 0x2800

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    const/high16 v15, 0x3200000

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v9

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    sget-object v14, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/tencent/zdevs/bah/sss;->zjs(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xfb

    if-gt v13, v14, :cond_8

    .line 106
    const/4 v13, 0x1

    sget v14, Lcom/android/tencent/zdevs/bah/sss;->bb:I

    add-int/2addr v13, v14

    sput v13, Lcom/android/tencent/zdevs/bah/sss;->bb:I

    .line 107
    sget-object v13, Lcom/android/tencent/zdevs/bah/sss;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Lcom/android/tencent/zdevs/bah/sss$100000002;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v15 .. v19}, Lcom/android/tencent/zdevs/bah/sss$100000002;-><init>(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 129
    :cond_8
    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "miad"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 132
    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/tencent/zdevs/bah/sss;->jd(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_9

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "baidunetdisk"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_9

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "download"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_9

    move-object v13, v9

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "dcim"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 134
    :cond_9
    move-object v13, v9

    move-object v14, v1

    move v15, v2

    move-object/from16 v16, v3

    invoke-static/range {v13 .. v16}, Lcom/android/tencent/zdevs/bah/sss;->deleteDirWihtFile(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 25

    .prologue
    .line 206
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const/16 v20, 0x0

    check-cast v20, Ljava/io/FileInputStream;

    move-object/from16 v6, v20

    .line 207
    const/16 v20, 0x0

    check-cast v20, Ljava/io/FileOutputStream;

    move-object/from16 v7, v20

    .line 208
    const/16 v20, 0x0

    check-cast v20, Ljava/io/File;

    move-object/from16 v8, v20

    .line 209
    const/16 v20, 0x0

    check-cast v20, Ljava/io/File;

    move-object/from16 v9, v20

    .line 211
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v20

    .line 213
    new-instance v20, Ljava/io/File;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v4

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v20

    .line 214
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 215
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 216
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v20

    .line 218
    :cond_0
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    move-result v20

    .line 219
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v9

    invoke-direct/range {v21 .. v22}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v6, v20

    .line 220
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v8

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v7, v20

    .line 221
    move-object/from16 v20, v2

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/tencent/zdevs/bah/sss;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v20

    move-object/from16 v14, v20

    .line 223
    new-instance v20, Ljavax/crypto/CipherInputStream;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v6

    move-object/from16 v23, v14

    invoke-direct/range {v21 .. v23}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v15, v20

    .line 224
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v16, v20

    .line 225
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 226
    :goto_0
    move-object/from16 v20, v15

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v20

    move/from16 v24, v20

    move/from16 v20, v24

    move/from16 v21, v24

    move/from16 v17, v21

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 230
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    :goto_1
    move-object/from16 v20, v7

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 243
    :goto_2
    move-object/from16 v20, v6

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 248
    :goto_3
    move-object/from16 v20, v8

    move-object/from16 v2, v20

    return-object v2

    .line 227
    :cond_2
    move-object/from16 v20, v7

    move-object/from16 v21, v16

    const/16 v22, 0x0

    move/from16 v23, v17

    :try_start_3
    invoke-virtual/range {v20 .. v23}, Ljava/io/FileOutputStream;->write([BII)V

    .line 228
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v20

    move-object/from16 v14, v20

    .line 233
    move-object/from16 v20, v14

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v20

    move-object/from16 v14, v20

    .line 235
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v20

    move-object/from16 v10, v20

    .line 238
    move-object/from16 v20, v7

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 243
    :goto_4
    move-object/from16 v20, v6

    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 245
    :goto_5
    move-object/from16 v20, v10

    throw v20

    .line 238
    :catch_2
    move-exception v20

    move-object/from16 v18, v20

    .line 240
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 243
    :catch_3
    move-exception v20

    move-object/from16 v18, v20

    .line 245
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 238
    :catch_4
    move-exception v20

    move-object/from16 v18, v20

    .line 240
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 243
    :catch_5
    move-exception v20

    move-object/from16 v18, v20

    .line 245
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static formatDuring(J)Ljava/lang/String;
    .locals 21

    .prologue
    .line 523
    move-wide/from16 v0, p0

    move-wide v12, v0

    const v14, 0x5265c00

    int-to-long v14, v14

    div-long/2addr v12, v14

    move-wide v3, v12

    .line 524
    move-wide v12, v0

    const v14, 0x5265c00

    int-to-long v14, v14

    rem-long/2addr v12, v14

    const v14, 0x36ee80

    int-to-long v14, v14

    div-long/2addr v12, v14

    move-wide v5, v12

    .line 525
    move-wide v12, v0

    const v14, 0x36ee80

    int-to-long v14, v14

    rem-long/2addr v12, v14

    const v14, 0xea60

    int-to-long v14, v14

    div-long/2addr v12, v14

    move-wide v7, v12

    .line 526
    move-wide v12, v0

    const v14, 0xea60

    int-to-long v14, v14

    rem-long/2addr v12, v14

    const/16 v14, 0x3e8

    int-to-long v14, v14

    div-long/2addr v12, v14

    move-wide v9, v12

    .line 527
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-wide/from16 v18, v3

    invoke-static/range {v18 .. v19}, Lcom/android/tencent/zdevs/bah/sss;->to2Str(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-wide/from16 v17, v5

    invoke-static/range {v17 .. v18}, Lcom/android/tencent/zdevs/bah/sss;->to2Str(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-wide v15, v7

    invoke-static/range {v15 .. v16}, Lcom/android/tencent/zdevs/bah/sss;->to2Str(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-wide v13, v9

    invoke-static {v13, v14}, Lcom/android/tencent/zdevs/bah/sss;->to2Str(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    return-object v0
.end method

.method public static formatDuring(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/tencent/zdevs/bah/sss;->formatDuring(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static getStringRandom(I)Ljava/lang/String;
    .locals 14

    .prologue
    .line 448
    move v0, p0

    const-string v8, ""

    move-object v2, v8

    .line 449
    new-instance v8, Ljava/util/Random;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    move-object v3, v8

    .line 452
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v0

    if-lt v8, v9, :cond_0

    .line 464
    move-object v8, v2

    move-object v0, v8

    return-object v0

    .line 454
    :cond_0
    move-object v8, v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/4 v9, 0x2

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    if-ne v8, v9, :cond_2

    const-string v8, "char"

    :goto_1
    move-object v5, v8

    .line 456
    const-string v8, "char"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 458
    move-object v8, v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/4 v9, 0x2

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    if-ne v8, v9, :cond_3

    const/16 v8, 0x41

    :goto_2
    move v6, v8

    .line 459
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v3

    const/16 v10, 0x1a

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    move v10, v6

    add-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 452
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 454
    :cond_2
    const-string v8, "num"

    goto :goto_1

    .line 458
    :cond_3
    const/16 v8, 0x61

    goto :goto_2

    .line 460
    :cond_4
    const-string v8, "num"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 461
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v3

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_3
.end method

.method public static final getbah(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    .prologue
    .line 369
    move-object/from16 v0, p0

    new-instance v14, Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string v16, "by:\u5f7c\u5cb8\u82b1 qq:1279525738"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    move-object v2, v14

    .line 370
    move-object v14, v2

    const/4 v15, 0x3

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v3, v14

    .line 371
    move-object v14, v2

    const/4 v15, 0x4

    const/16 v16, 0x5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v4, v14

    .line 372
    new-instance v14, Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    move-object v5, v14

    .line 373
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v14

    .line 374
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 375
    new-instance v14, Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    move-object v8, v14

    .line 376
    move-object v14, v8

    move-object v15, v3

    const-string v16, "\u4e09\u751f\u77f3\u7554"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 377
    move-object v14, v9

    move-object v15, v4

    const-string v16, "\u5f7c\u5cb8\u82b1\u5f00"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 378
    move-object v14, v10

    const-string v15, "\u4e09\u751f\u77f3\u7554"

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 379
    move-object v14, v11

    const-string v15, "\u5f7c\u5cb8\u82b1\u5f00"

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 380
    new-instance v14, Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v12

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    return-object v0
.end method

.method public static getmm(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 432
    move-object v0, p0

    const/4 v5, 0x0

    check-cast v5, [B

    move-object v2, v5

    .line 434
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v3, v5

    .line 435
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 436
    move-object v5, v3

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 440
    :goto_0
    move-object v5, v2

    invoke-static {v5}, Lcom/android/tencent/zdevs/bah/sss;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 441
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 436
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 438
    move-object v5, v3

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getsss(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    .prologue
    .line 400
    move-object/from16 v0, p0

    const/16 v12, 0x10

    new-array v12, v12, [C

    fill-array-data v12, :array_0

    move-object v2, v12

    .line 404
    move-object v12, v0

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    move-object v3, v12

    .line 406
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    move-object v4, v12

    .line 408
    move-object v12, v4

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 410
    move-object v12, v4

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    move-object v5, v12

    .line 412
    move-object v12, v5

    array-length v12, v12

    move v6, v12

    .line 413
    move v12, v6

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [C

    move-object v7, v12

    .line 414
    const/4 v12, 0x0

    move v8, v12

    .line 415
    const/4 v12, 0x0

    move v9, v12

    :goto_0
    move v12, v9

    move v13, v6

    if-lt v12, v13, :cond_0

    .line 420
    new-instance v12, Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    move-object v9, v12

    .line 421
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    const/16 v14, 0x18

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 422
    move-object v12, v9

    move-object v0, v12

    .line 426
    :goto_1
    return-object v0

    .line 416
    :cond_0
    move-object v12, v5

    move v13, v9

    aget-byte v12, v12, v13

    move v10, v12

    .line 417
    move-object v12, v7

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    move-object v14, v2

    move v15, v10

    const/16 v16, 0x4

    ushr-int/lit8 v15, v15, 0x4

    const/16 v16, 0xf

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v12, v13

    .line 418
    move-object v12, v7

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    move-object v14, v2

    move v15, v10

    const/16 v16, 0xf

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    aput-char v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 422
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 425
    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    const/4 v12, 0x0

    check-cast v12, Ljava/lang/String;

    move-object v0, v12

    goto :goto_1

    .line 400
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 12

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    const/4 v7, 0x0

    check-cast v7, Ljavax/crypto/Cipher;

    move-object v3, v7

    .line 178
    :try_start_0
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "QQqun 571012706 "

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v4, v7

    .line 179
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v5, v7

    .line 180
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    move-object v3, v7

    .line 181
    move-object v7, v3

    move v8, v1

    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 192
    :goto_0
    move-object v7, v3

    move-object v0, v7

    return-object v0

    .line 181
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 183
    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v4, v7

    .line 185
    move-object v7, v4

    invoke-virtual {v7}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v7

    move-object v4, v7

    .line 187
    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v7

    move-object v4, v7

    .line 190
    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method static jd(Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 360
    move-object v0, p0

    move-object v5, v0

    sget-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->fi:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 361
    move-object v5, v0

    move-object v2, v5

    .line 362
    move-object v5, v0

    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 363
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 364
    move v5, v3

    move v0, v5

    return v0
.end method

.method public static jj(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    invoke-static {v6}, Lcom/android/tencent/zdevs/bah/sss;->getsss(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 155
    move v6, v2

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    .line 156
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 157
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sget v9, Lcom/android/tencent/zdevs/bah/MainActivity;->hzs:I

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 158
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/android/tencent/zdevs/bah/sss;->decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 163
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    return-void

    .line 160
    :cond_0
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "!\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/tencent/zdevs/bah/sss;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 161
    new-instance v6, Ljava/io/File;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "!\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    goto/16 :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    .prologue
    .line 304
    move-object/from16 v2, p0

    const-string v17, "\u4e09\u751f\u77f3\u7554 \u5f7c\u5cb8\u82b1\u5f00"

    move-object/from16 v4, v17

    .line 305
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    .line 306
    move-object/from16 v17, v4

    const-string v18, "\\D+"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 307
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v17

    .line 308
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    .line 310
    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v4

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v17

    .line 311
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    move-object/from16 v8, v17

    .line 312
    const/16 v17, 0x0

    move/from16 v9, v17

    :goto_0
    move/from16 v17, v9

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 316
    new-instance v17, Ljava/lang/String;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v8

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([C)V

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v17

    move-object/from16 v9, v17

    .line 317
    new-instance v17, Ljava/lang/String;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v9

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v10, v17

    .line 318
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v10

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v17

    .line 319
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 320
    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, v17

    .line 321
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    move-object/from16 v14, v17

    .line 322
    const/16 v17, 0x0

    move/from16 v15, v17

    :goto_1
    move/from16 v17, v15

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 326
    new-instance v17, Ljava/lang/String;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v14

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v2, v17

    return-object v2

    .line 314
    :cond_0
    move-object/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v19, v8

    move/from16 v20, v9

    aget-char v19, v19, v20

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    xor-int v19, v19, v20

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v17, v18

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 324
    :cond_1
    move-object/from16 v17, v14

    move/from16 v18, v15

    move-object/from16 v19, v14

    move/from16 v20, v15

    aget-char v19, v19, v20

    move-object/from16 v20, v13

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    xor-int v19, v19, v20

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v17, v18

    .line 322
    add-int/lit8 v15, v15, 0x1

    goto :goto_1
.end method

.method public static sc(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    new-instance v3, Ljava/lang/Thread;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Lcom/android/tencent/zdevs/bah/sss$100000003;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/tencent/zdevs/bah/sss$100000003;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static to2Str(J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 507
    move-wide v0, p0

    move-wide v4, v0

    const/16 v6, 0x9

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 509
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 512
    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method static zjs(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v2, v5

    .line 149
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 150
    move v5, v3

    move v0, v5

    return v0
.end method
