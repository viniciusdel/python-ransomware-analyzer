.class public Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 15
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move v1, v11

    .line 239
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move v2, v11

    .line 240
    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move v3, v11

    .line 242
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v3

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v11, v12

    move v12, v2

    mul-float/2addr v11, v12

    move v4, v11

    .line 243
    move v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v5, v11

    .line 244
    move v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v1

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    rem-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move v6, v11

    .line 246
    move v11, v1

    float-to-int v11, v11

    const/16 v12, 0x3c

    div-int/lit8 v11, v11, 0x3c

    move v7, v11

    .line 248
    const/4 v11, 0x0

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    const/4 v11, 0x0

    move v10, v11

    .line 250
    move v11, v7

    packed-switch v11, :pswitch_data_0

    .line 284
    :goto_0
    move v11, v8

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v8, v11

    .line 285
    move v11, v9

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v9, v11

    .line 286
    move v11, v10

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v10, v11

    .line 288
    move v11, v8

    move v12, v9

    move v13, v10

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    move v0, v11

    return v0

    .line 252
    :pswitch_0
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 253
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 254
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 255
    goto :goto_0

    .line 257
    :pswitch_1
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 258
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 259
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 260
    goto :goto_0

    .line 262
    :pswitch_2
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 263
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 264
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 265
    goto/16 :goto_0

    .line 267
    :pswitch_3
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 268
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 269
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 270
    goto/16 :goto_0

    .line 272
    :pswitch_4
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 273
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 274
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_5
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 279
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 280
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 19
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v13, v0

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v4, v13

    .line 174
    move v13, v1

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v5, v13

    .line 175
    move v13, v2

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v6, v13

    .line 177
    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move v7, v13

    .line 178
    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v8, v13

    .line 179
    move v13, v7

    move v14, v8

    sub-float/2addr v13, v14

    move v9, v13

    .line 182
    move v13, v7

    move v14, v8

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v12, v13

    .line 184
    move v13, v7

    move v14, v8

    cmpl-float v13, v13, v14

    if-nez v13, :cond_1

    .line 186
    const/4 v13, 0x0

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v11, v14

    move v10, v13

    .line 199
    :goto_0
    move v13, v10

    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    rem-float/2addr v13, v14

    move v10, v13

    .line 200
    move v13, v10

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 201
    move v13, v10

    const/high16 v14, 0x43b40000    # 360.0f

    add-float/2addr v13, v14

    move v10, v13

    .line 204
    :cond_0
    move-object v13, v3

    const/4 v14, 0x0

    move v15, v10

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    invoke-static/range {v15 .. v17}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 205
    move-object v13, v3

    const/4 v14, 0x1

    move v15, v11

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v17}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 206
    move-object v13, v3

    const/4 v14, 0x2

    move v15, v12

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v17}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 207
    return-void

    .line 188
    :cond_1
    move v13, v7

    move v14, v4

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2

    .line 189
    move v13, v5

    move v14, v6

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v13, v14

    move v10, v13

    .line 196
    :goto_1
    move v13, v9

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v16, v12

    mul-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v13, v14

    move v11, v13

    goto :goto_0

    .line 190
    :cond_2
    move v13, v7

    move v14, v5

    cmpl-float v13, v13, v14

    if-nez v13, :cond_3

    .line 191
    move v13, v6

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    add-float/2addr v13, v14

    move v10, v13

    goto :goto_1

    .line 193
    :cond_3
    move v13, v4

    move v14, v5

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v13, v14

    move v10, v13

    goto :goto_1
.end method

.method public static calculateContrast(II)D
    .locals 13
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 91
    move v0, p0

    move v1, p1

    move v6, v1

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_0

    .line 92
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "background can not be translucent: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    :cond_0
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_1

    .line 97
    move v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    move v0, v6

    .line 100
    :cond_1
    move v6, v0

    invoke-static {v6}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 101
    move v6, v1

    invoke-static {v6}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 104
    move-wide v6, v2

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    move-wide v0, v6

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 13
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 71
    move v0, p0

    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v7, v9

    move-wide v1, v7

    .line 72
    move-wide v7, v1

    const-wide v9, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    move-wide v7, v1

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v7, v9

    :goto_0
    move-wide v1, v7

    .line 74
    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v7, v9

    move-wide v3, v7

    .line 75
    move-wide v7, v3

    const-wide v9, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    move-wide v7, v3

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v7, v9

    :goto_1
    move-wide v3, v7

    .line 77
    move v7, v0

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v7, v9

    move-wide v5, v7

    .line 78
    move-wide v7, v5

    const-wide v9, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v7, v7, v9

    if-gez v7, :cond_2

    move-wide v7, v5

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v7, v9

    :goto_2
    move-wide v5, v7

    .line 80
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    move-wide v9, v1

    mul-double/2addr v7, v9

    const-wide v9, 0x3fe6e2eb1c432ca5L    # 0.7152

    move-wide v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    const-wide v9, 0x3fb27bb2fec56d5dL    # 0.0722

    move-wide v11, v5

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    move-wide v0, v7

    return-wide v0

    .line 72
    :cond_0
    move-wide v7, v1

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v7, v9

    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v7, v9

    const-wide v9, 0x4003333333333333L    # 2.4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    goto :goto_0

    .line 75
    :cond_1
    move-wide v7, v3

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v7, v9

    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v7, v9

    const-wide v9, 0x4003333333333333L    # 2.4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    goto :goto_1

    .line 78
    :cond_2
    move-wide v7, v5

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v7, v9

    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v7, v9

    const-wide v9, 0x4003333333333333L    # 2.4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    goto :goto_2
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 15
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 119
    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0xff

    if-eq v10, v11, :cond_0

    .line 120
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "background can not be translucent: #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v1

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 125
    :cond_0
    move v10, v0

    const/16 v11, 0xff

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    move v3, v10

    .line 126
    move v10, v3

    move v11, v1

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    move-wide v4, v10

    .line 127
    move-wide v10, v4

    move v12, v2

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 129
    const/4 v10, -0x1

    move v0, v10

    .line 154
    :goto_0
    return v0

    .line 133
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 134
    const/4 v10, 0x0

    move v7, v10

    .line 135
    const/16 v10, 0xff

    move v8, v10

    .line 137
    :goto_1
    move v10, v6

    const/16 v11, 0xa

    if-gt v10, v11, :cond_3

    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 139
    move v10, v7

    move v11, v8

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v9, v10

    .line 141
    move v10, v0

    move v11, v9

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    move v3, v10

    .line 142
    move v10, v3

    move v11, v1

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    move-wide v4, v10

    .line 144
    move-wide v10, v4

    move v12, v2

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 145
    move v10, v9

    move v7, v10

    .line 150
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 151
    goto :goto_1

    .line 147
    :cond_2
    move v10, v9

    move v8, v10

    goto :goto_2

    .line 154
    :cond_3
    move v10, v8

    move v0, v10

    goto :goto_0
.end method

.method public static colorToHSL(I[F)V
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    move v0, p0

    move-object v1, p1

    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 222
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 6

    .prologue
    .line 54
    move v0, p0

    move v1, p1

    const/16 v2, 0xff

    const/16 v3, 0xff

    move v4, v1

    rsub-int v3, v4, 0xff

    const/16 v4, 0xff

    move v5, v0

    rsub-int v4, v5, 0xff

    mul-int/2addr v3, v4

    const/16 v4, 0xff

    div-int/lit16 v3, v3, 0xff

    rsub-int v2, v3, 0xff

    move v0, v2

    return v0
.end method

.method public static compositeColors(II)I
    .locals 13
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 39
    move v0, p0

    move v1, p1

    move v8, v1

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move v2, v8

    .line 40
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move v3, v8

    .line 41
    move v8, v3

    move v9, v2

    invoke-static {v8, v9}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v8

    move v4, v8

    .line 43
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    move v9, v3

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    move v11, v2

    move v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v5, v8

    .line 45
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    move v9, v3

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    move v11, v2

    move v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v6, v8

    .line 47
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    move v9, v3

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    move v11, v2

    move v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v7, v8

    .line 50
    move v8, v4

    move v9, v5

    move v10, v6

    move v11, v7

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    return v0
.end method

.method private static compositeComponent(IIIII)I
    .locals 9

    .prologue
    .line 58
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 59
    :goto_0
    return v0

    :cond_0
    const/16 v5, 0xff

    move v6, v0

    mul-int/2addr v5, v6

    move v6, v1

    mul-int/2addr v5, v6

    move v6, v2

    move v7, v3

    mul-int/2addr v6, v7

    const/16 v7, 0xff

    move v8, v1

    rsub-int v7, v8, 0xff

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    move v6, v4

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 304
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 5

    .prologue
    .line 308
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 297
    move v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 298
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "alpha must be between 0 and 255."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_1
    move v2, v0

    const v3, 0xffffff

    and-int/2addr v2, v3

    move v3, v1

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method
