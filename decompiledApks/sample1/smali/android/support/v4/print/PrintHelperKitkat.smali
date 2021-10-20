.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 57
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 90
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 92
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 94
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 97
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 10

    .prologue
    .line 51
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 569
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v8, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 570
    move-object v8, v1

    move-object v0, v8

    .line 584
    :goto_0
    return-object v0

    .line 573
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 575
    new-instance v8, Landroid/graphics/Canvas;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v8

    .line 576
    new-instance v8, Landroid/graphics/Paint;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object v5, v8

    .line 577
    new-instance v8, Landroid/graphics/ColorMatrix;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    move-object v6, v8

    .line 578
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 579
    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-direct {v9, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object v7, v8

    .line 580
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 581
    move-object v8, v4

    move-object v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 582
    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    move-object v8, v3

    move-object v0, v8

    goto :goto_0
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 13

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v9, Landroid/graphics/Matrix;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move-object v5, v9

    .line 286
    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    move v10, v1

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 287
    move v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 288
    move v9, v6

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    move v11, v2

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    move v6, v9

    .line 292
    :goto_0
    move-object v9, v5

    move v10, v6

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v9

    .line 295
    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    move v10, v1

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move v7, v9

    .line 297
    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    move v10, v2

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move v8, v9

    .line 299
    move-object v9, v5

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v9

    .line 300
    move-object v9, v5

    move-object v0, v9

    return-object v0

    .line 290
    :cond_0
    move v9, v6

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    move v11, v2

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move v6, v9

    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v8, :cond_1

    .line 551
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "bad argument to loadBitmap"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 553
    :cond_1
    const/4 v8, 0x0

    move-object v3, v8

    .line 555
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    .line 556
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 558
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 560
    move-object v8, v3

    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    :cond_2
    :goto_0
    move-object v8, v4

    move-object v0, v8

    return-object v0

    .line 561
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 562
    const-string v8, "PrintHelperKitkat"

    const-string v9, "close fail "

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v3

    if-eqz v8, :cond_3

    .line 560
    move-object v8, v3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 563
    :cond_3
    :goto_1
    move-object v8, v6

    throw v8

    .line 561
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 562
    const-string v8, "PrintHelperKitkat"

    const-string v9, "close fail "

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 500
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v17, v4

    if-lez v17, :cond_0

    move-object/from16 v17, v3

    if-eqz v17, :cond_0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 501
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    const-string v19, "bad argument to getScaledBitmap"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 504
    :cond_1
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v5, v17

    .line 505
    move-object/from16 v17, v5

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    invoke-direct/range {v17 .. v19}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 508
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    move/from16 v6, v17

    .line 509
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    move/from16 v7, v17

    .line 512
    move/from16 v17, v6

    if-lez v17, :cond_2

    move/from16 v17, v7

    if-gtz v17, :cond_3

    .line 513
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v2, v17

    .line 541
    :goto_0
    return-object v2

    .line 517
    :cond_3
    move/from16 v17, v6

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v8, v17

    .line 519
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 520
    :goto_1
    move/from16 v17, v8

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 521
    move/from16 v17, v8

    const/16 v18, 0x1

    ushr-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    .line 522
    move/from16 v17, v9

    const/16 v18, 0x1

    shl-int/lit8 v17, v17, 0x1

    move/from16 v9, v17

    goto :goto_1

    .line 526
    :cond_4
    move/from16 v17, v9

    if-lez v17, :cond_5

    const/16 v17, 0x0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v19, v9

    div-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 527
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto :goto_0

    .line 529
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 530
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v11, v18

    monitor-enter v17

    .line 531
    move-object/from16 v17, v2

    :try_start_0
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v20

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 532
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 533
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    move/from16 v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 534
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 535
    move-object/from16 v17, v11

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    :try_start_1
    invoke-direct/range {v17 .. v19}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v17

    move-object/from16 v11, v17

    .line 539
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v12, v18

    monitor-enter v17

    .line 540
    move-object/from16 v17, v2

    const/16 v18, 0x0

    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 541
    move-object/from16 v17, v12

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 535
    :catchall_0
    move-exception v17

    move-object/from16 v12, v17

    move-object/from16 v17, v11

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v12

    throw v17

    .line 541
    :catchall_1
    move-exception v17

    move-object/from16 v13, v17

    move-object/from16 v17, v12

    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v13

    throw v17

    .line 539
    :catchall_2
    move-exception v17

    move-object/from16 v14, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v15, v18

    monitor-enter v17

    .line 540
    move-object/from16 v17, v2

    const/16 v18, 0x0

    :try_start_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 541
    move-object/from16 v17, v15

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v17, v14

    throw v17

    :catchall_3
    move-exception v17

    move-object/from16 v16, v17

    move-object/from16 v17, v15

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v17, v16

    throw v17
.end method


# virtual methods
.method public getColorMode()I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    move v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getScaleMode()I
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    move v0, v1

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 18

    .prologue
    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v2

    if-nez v8, :cond_0

    .line 271
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    move v4, v8

    .line 179
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string v9, "print"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    move-object v5, v8

    .line 180
    sget-object v8, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    move-object v6, v8

    .line 181
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 182
    sget-object v8, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    move-object v6, v8

    .line 184
    :cond_1
    new-instance v8, Landroid/print/PrintAttributes$Builder;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Landroid/print/PrintAttributes$Builder;-><init>()V

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v8, v9}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v8

    move-object v7, v8

    .line 189
    move-object v8, v5

    move-object v9, v1

    new-instance v10, Landroid/support/v4/print/PrintHelperKitkat$1;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object v8

    .line 271
    goto :goto_0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    move v4, v9

    .line 316
    new-instance v9, Landroid/support/v4/print/PrintHelperKitkat$2;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    invoke-direct/range {v10 .. v15}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V

    move-object v5, v9

    .line 477
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string v10, "print"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/print/PrintManager;

    move-object v6, v9

    .line 478
    new-instance v9, Landroid/print/PrintAttributes$Builder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Landroid/print/PrintAttributes$Builder;-><init>()V

    move-object v7, v9

    .line 479
    move-object v9, v7

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v9, v10}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v9

    .line 481
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 482
    move-object v9, v7

    sget-object v10, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v9, v10}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v9

    .line 486
    :cond_0
    :goto_0
    move-object v9, v7

    invoke-virtual {v9}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v9

    move-object v8, v9

    .line 488
    move-object v9, v6

    move-object v10, v1

    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v9, v10, v11, v12}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object v9

    .line 489
    return-void

    .line 483
    :cond_1
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 484
    move-object v9, v7

    sget-object v10, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v9, v10}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v9

    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 134
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 144
    return-void
.end method

.method public setScaleMode(I)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 112
    return-void
.end method
