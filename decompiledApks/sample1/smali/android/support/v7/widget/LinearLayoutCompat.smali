.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 104
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 111
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 115
    move-object v7, v0

    const v8, 0x800033

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 150
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    move v10, v3

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v7

    move-object v4, v7

    .line 153
    move-object v7, v4

    sget v8, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v7

    move v5, v7

    .line 154
    move v7, v5

    if-ltz v7, :cond_0

    .line 155
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 158
    :cond_0
    move-object v7, v4

    sget v8, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v7

    move v5, v7

    .line 159
    move v7, v5

    if-ltz v7, :cond_1

    .line 160
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 163
    :cond_1
    move-object v7, v4

    sget v8, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v7

    move v6, v7

    .line 164
    move v7, v6

    if-nez v7, :cond_2

    .line 165
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 168
    :cond_2
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 170
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 173
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 175
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 177
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 179
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 180
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 14

    .prologue
    .line 1311
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v3, v8

    .line 1313
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_1

    .line 1314
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1315
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1316
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 1318
    move-object v8, v6

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1321
    move-object v8, v6

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v7, v8

    .line 1322
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1325
    move-object v8, v0

    move-object v9, v5

    move v10, v2

    const/4 v11, 0x0

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1326
    move-object v8, v6

    move v9, v7

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1313
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 14

    .prologue
    .line 888
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v3, v8

    .line 890
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_1

    .line 891
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 892
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 893
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 895
    move-object v8, v6

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 898
    move-object v8, v6

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v7, v8

    .line 899
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 902
    move-object v8, v0

    move-object v9, v5

    move v10, v3

    const/4 v11, 0x0

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 903
    move-object v8, v6

    move v9, v7

    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 890
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 907
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 1639
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move v10, v3

    move v11, v5

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1640
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 1735
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move v0, v2

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    move v2, v8

    .line 317
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    move v3, v8

    .line 318
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_2

    .line 319
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 321
    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 322
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 325
    move v8, v3

    if-eqz v8, :cond_1

    .line 326
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v7, v8

    .line 330
    :goto_1
    move-object v8, v0

    move-object v9, v1

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 318
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v8, v9

    move v7, v8

    goto :goto_1

    .line 335
    :cond_2
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 338
    move-object v8, v4

    if-nez v8, :cond_5

    .line 339
    move v8, v3

    if-eqz v8, :cond_4

    .line 340
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v8

    move v5, v8

    .line 352
    :goto_2
    move-object v8, v0

    move-object v9, v1

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 354
    :cond_3
    return-void

    .line 342
    :cond_4
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v8, v9

    move v5, v8

    goto :goto_2

    .line 345
    :cond_5
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 346
    move v8, v3

    if-eqz v8, :cond_6

    .line 347
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v8, v9

    move v5, v8

    goto :goto_2

    .line 349
    :cond_6
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v6

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v7

    move v2, v7

    .line 290
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 291
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 293
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 294
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v7

    .line 296
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v7, v8

    move v6, v7

    .line 297
    move-object v7, v0

    move-object v8, v1

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 290
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_1
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 303
    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 304
    const/4 v7, 0x0

    move v4, v7

    .line 305
    move-object v7, v3

    if-nez v7, :cond_3

    .line 306
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 311
    :goto_1
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 313
    :cond_2
    return-void

    .line 308
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v7

    .line 309
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    move v4, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 9

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v4, v5

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 9

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v5, v6

    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 6

    .prologue
    .line 1718
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v1, :cond_0

    .line 1719
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1723
    :goto_0
    return-object v0

    .line 1720
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1721
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 1723
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 7

    .prologue
    .line 1705
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 6

    .prologue
    .line 1728
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getBaseline()I
    .locals 9

    .prologue
    .line 417
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_0

    .line 418
    move-object v5, v0

    invoke-super {v5}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    move v0, v5

    .line 465
    :goto_0
    return v0

    .line 421
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1

    .line 422
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 427
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    move v2, v5

    .line 429
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 430
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2

    .line 432
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 436
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 446
    :cond_3
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    move v3, v5

    .line 448
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 449
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const/16 v6, 0x70

    and-int/lit8 v5, v5, 0x70

    move v4, v5

    .line 450
    move v5, v4

    const/16 v6, 0x30

    if-eq v5, v6, :cond_4

    .line 451
    move v5, v4

    sparse-switch v5, :sswitch_data_0

    .line 464
    :cond_4
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v4, v5

    .line 465
    move v5, v3

    move-object v6, v4

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    move v6, v2

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 453
    :sswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 454
    goto :goto_1

    .line 457
    :sswitch_1
    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v3, v5

    goto :goto_1

    .line 451
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move v0, v1

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 4

    .prologue
    .line 1341
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    move v0, v1

    return v0
.end method

.method public getDividerWidth()I
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    move v0, v1

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1383
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1395
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 1661
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getShowDividers()I
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    move v0, v1

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getWeightSum()F
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    move v0, v1

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 6

    .prologue
    .line 559
    move-object v0, p0

    move v1, p1

    move v4, v1

    if-nez v4, :cond_1

    .line 560
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 573
    :goto_1
    return v0

    .line 560
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 561
    :cond_1
    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 562
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 563
    :cond_3
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 564
    const/4 v4, 0x0

    move v2, v4

    .line 565
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_3
    move v4, v3

    if-ltz v4, :cond_4

    .line 566
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 567
    const/4 v4, 0x1

    move v2, v4

    .line 571
    :cond_4
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 565
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 573
    :cond_6
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public isBaselineAligned()Z
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move v0, v1

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move v0, v1

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 38

    .prologue
    .line 1515
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v32, v2

    invoke-static/range {v32 .. v32}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v32

    move/from16 v7, v32

    .line 1516
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v32

    move/from16 v8, v32

    .line 1522
    move/from16 v32, v6

    move/from16 v33, v4

    sub-int v32, v32, v33

    move/from16 v11, v32

    .line 1523
    move/from16 v32, v11

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v33

    sub-int v32, v32, v33

    move/from16 v12, v32

    .line 1526
    move/from16 v32, v11

    move/from16 v33, v8

    sub-int v32, v32, v33

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v33

    sub-int v32, v32, v33

    move/from16 v13, v32

    .line 1528
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v32

    move/from16 v14, v32

    .line 1530
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v32, v0

    const v33, 0x800007

    and-int v32, v32, v33

    move/from16 v15, v32

    .line 1531
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v32, v0

    const/16 v33, 0x70

    and-int/lit8 v32, v32, 0x70

    move/from16 v16, v32

    .line 1533
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v32, v0

    move/from16 v17, v32

    .line 1535
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v32, v0

    move-object/from16 v18, v32

    .line 1536
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v32, v0

    move-object/from16 v19, v32

    .line 1538
    move-object/from16 v32, v2

    invoke-static/range {v32 .. v32}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v32

    move/from16 v20, v32

    .line 1539
    move/from16 v32, v15

    move/from16 v33, v20

    invoke-static/range {v32 .. v33}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    .line 1552
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move/from16 v10, v32

    .line 1556
    :goto_0
    const/16 v32, 0x0

    move/from16 v21, v32

    .line 1557
    const/16 v32, 0x1

    move/from16 v22, v32

    .line 1559
    move/from16 v32, v7

    if-eqz v32, :cond_0

    .line 1560
    move/from16 v32, v14

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v21, v32

    .line 1561
    const/16 v32, -0x1

    move/from16 v22, v32

    .line 1564
    :cond_0
    const/16 v32, 0x0

    move/from16 v23, v32

    :goto_1
    move/from16 v32, v23

    move/from16 v33, v14

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_7

    .line 1565
    move/from16 v32, v21

    move/from16 v33, v22

    move/from16 v34, v23

    mul-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v24, v32

    .line 1566
    move-object/from16 v32, v2

    move/from16 v33, v24

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v25, v32

    .line 1568
    move-object/from16 v32, v25

    if-nez v32, :cond_2

    .line 1569
    move/from16 v32, v10

    move-object/from16 v33, v2

    move/from16 v34, v24

    invoke-virtual/range {v33 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1564
    :cond_1
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 1542
    :sswitch_0
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move/from16 v33, v5

    add-int v32, v32, v33

    move/from16 v33, v3

    sub-int v32, v32, v33

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v10, v32

    .line 1543
    goto :goto_0

    .line 1547
    :sswitch_1
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move/from16 v33, v5

    move/from16 v34, v3

    sub-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1548
    goto/16 :goto_0

    .line 1570
    :cond_2
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    .line 1571
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move/from16 v26, v32

    .line 1572
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move/from16 v27, v32

    .line 1573
    const/16 v32, -0x1

    move/from16 v28, v32

    .line 1575
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v29, v32

    .line 1578
    move/from16 v32, v17

    if-eqz v32, :cond_3

    move-object/from16 v32, v29

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 1579
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getBaseline()I

    move-result v32

    move/from16 v28, v32

    .line 1582
    :cond_3
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v32, v0

    move/from16 v30, v32

    .line 1583
    move/from16 v32, v30

    if-gez v32, :cond_4

    .line 1584
    move/from16 v32, v16

    move/from16 v30, v32

    .line 1587
    :cond_4
    move/from16 v32, v30

    const/16 v33, 0x70

    and-int/lit8 v32, v32, 0x70

    sparse-switch v32, :sswitch_data_1

    .line 1619
    move/from16 v32, v8

    move/from16 v9, v32

    .line 1623
    :cond_5
    :goto_3
    move-object/from16 v32, v2

    move/from16 v33, v24

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 1624
    move/from16 v32, v10

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1627
    :cond_6
    move/from16 v32, v10

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1628
    move-object/from16 v32, v2

    move-object/from16 v33, v25

    move/from16 v34, v10

    move-object/from16 v35, v2

    move-object/from16 v36, v25

    invoke-virtual/range {v35 .. v36}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v35

    add-int v34, v34, v35

    move/from16 v35, v9

    move/from16 v36, v26

    move/from16 v37, v27

    invoke-direct/range {v32 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1630
    move/from16 v32, v10

    move/from16 v33, v26

    move-object/from16 v34, v29

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v25

    invoke-virtual/range {v34 .. v35}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v10, v32

    .line 1633
    move/from16 v32, v23

    move-object/from16 v33, v2

    move-object/from16 v34, v25

    move/from16 v35, v24

    invoke-virtual/range {v33 .. v35}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v23, v32

    goto/16 :goto_2

    .line 1589
    :sswitch_2
    move/from16 v32, v8

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v9, v32

    .line 1590
    move/from16 v32, v28

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 1591
    move/from16 v32, v9

    move-object/from16 v33, v18

    const/16 v34, 0x1

    aget v33, v33, v34

    move/from16 v34, v28

    sub-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v9, v32

    goto/16 :goto_3

    .line 1607
    :sswitch_3
    move/from16 v32, v8

    move/from16 v33, v13

    move/from16 v34, v27

    sub-int v33, v33, v34

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    add-int v32, v32, v33

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v9, v32

    .line 1609
    goto/16 :goto_3

    .line 1612
    :sswitch_4
    move/from16 v32, v12

    move/from16 v33, v27

    sub-int v32, v32, v33

    move-object/from16 v33, v29

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v9, v32

    .line 1613
    move/from16 v32, v28

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 1614
    move-object/from16 v32, v25

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move/from16 v33, v28

    sub-int v32, v32, v33

    move/from16 v31, v32

    .line 1615
    move/from16 v32, v9

    move-object/from16 v33, v19

    const/16 v34, 0x2

    aget v33, v33, v34

    move/from16 v34, v31

    sub-int v33, v33, v34

    sub-int v32, v32, v33

    move/from16 v9, v32

    .line 1616
    goto/16 :goto_3

    .line 1636
    :cond_7
    return-void

    .line 1539
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1587
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 30

    .prologue
    .line 1420
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v24

    move/from16 v7, v24

    .line 1426
    move/from16 v24, v5

    move/from16 v25, v3

    sub-int v24, v24, v25

    move/from16 v10, v24

    .line 1427
    move/from16 v24, v10

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v11, v24

    .line 1430
    move/from16 v24, v10

    move/from16 v25, v7

    sub-int v24, v24, v25

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v12, v24

    .line 1432
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v24

    move/from16 v13, v24

    .line 1434
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v24, v0

    const/16 v25, 0x70

    and-int/lit8 v24, v24, 0x70

    move/from16 v14, v24

    .line 1435
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v24, v0

    const v25, 0x800007

    and-int v24, v24, v25

    move/from16 v15, v24

    .line 1437
    move/from16 v24, v14

    sparse-switch v24, :sswitch_data_0

    .line 1450
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v24

    move/from16 v8, v24

    .line 1454
    :goto_0
    const/16 v24, 0x0

    move/from16 v16, v24

    :goto_1
    move/from16 v24, v16

    move/from16 v25, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 1455
    move-object/from16 v24, v2

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v17, v24

    .line 1456
    move-object/from16 v24, v17

    if-nez v24, :cond_1

    .line 1457
    move/from16 v24, v8

    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1454
    :cond_0
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1440
    :sswitch_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v24

    move/from16 v25, v6

    add-int v24, v24, v25

    move/from16 v25, v4

    sub-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v8, v24

    .line 1441
    goto :goto_0

    .line 1445
    :sswitch_1
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v24

    move/from16 v25, v6

    move/from16 v26, v4

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1446
    goto :goto_0

    .line 1458
    :cond_1
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 1459
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v18, v24

    .line 1460
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    move/from16 v19, v24

    .line 1462
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v20, v24

    .line 1465
    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v24, v0

    move/from16 v21, v24

    .line 1466
    move/from16 v24, v21

    if-gez v24, :cond_2

    .line 1467
    move/from16 v24, v15

    move/from16 v21, v24

    .line 1469
    :cond_2
    move-object/from16 v24, v2

    invoke-static/range {v24 .. v24}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v24

    move/from16 v22, v24

    .line 1470
    move/from16 v24, v21

    move/from16 v25, v22

    invoke-static/range {v24 .. v25}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v24

    move/from16 v23, v24

    .line 1472
    move/from16 v24, v23

    const/16 v25, 0x7

    and-int/lit8 v24, v24, 0x7

    sparse-switch v24, :sswitch_data_1

    .line 1484
    move/from16 v24, v7

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v9, v24

    .line 1488
    :goto_3
    move-object/from16 v24, v2

    move/from16 v25, v16

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1489
    move/from16 v24, v8

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1492
    :cond_3
    move/from16 v24, v8

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1493
    move-object/from16 v24, v2

    move-object/from16 v25, v17

    move/from16 v26, v9

    move/from16 v27, v8

    move-object/from16 v28, v2

    move-object/from16 v29, v17

    invoke-virtual/range {v28 .. v29}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v28

    add-int v27, v27, v28

    move/from16 v28, v18

    move/from16 v29, v19

    invoke-direct/range {v24 .. v29}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1495
    move/from16 v24, v8

    move/from16 v25, v19

    move-object/from16 v26, v20

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    add-int v24, v24, v25

    move/from16 v8, v24

    .line 1497
    move/from16 v24, v16

    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move/from16 v27, v16

    invoke-virtual/range {v25 .. v27}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v16, v24

    goto/16 :goto_2

    .line 1474
    :sswitch_2
    move/from16 v24, v7

    move/from16 v25, v12

    move/from16 v26, v18

    sub-int v25, v25, v26

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v9, v24

    .line 1476
    goto/16 :goto_3

    .line 1479
    :sswitch_3
    move/from16 v24, v11

    move/from16 v25, v18

    sub-int v24, v24, v25

    move-object/from16 v25, v20

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v9, v24

    .line 1480
    goto/16 :goto_3

    .line 1500
    :cond_4
    return-void

    .line 1437
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1472
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 13

    .prologue
    .line 1371
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1373
    return-void
.end method

.method measureHorizontal(II)V
    .locals 49

    .prologue
    .line 921
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v36, v2

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 922
    const/16 v36, 0x0

    move/from16 v5, v36

    .line 923
    const/16 v36, 0x0

    move/from16 v6, v36

    .line 924
    const/16 v36, 0x0

    move/from16 v7, v36

    .line 925
    const/16 v36, 0x0

    move/from16 v8, v36

    .line 926
    const/16 v36, 0x1

    move/from16 v9, v36

    .line 927
    const/16 v36, 0x0

    move/from16 v10, v36

    .line 929
    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v36

    move/from16 v11, v36

    .line 931
    move/from16 v36, v3

    invoke-static/range {v36 .. v36}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    move/from16 v12, v36

    .line 932
    move/from16 v36, v4

    invoke-static/range {v36 .. v36}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    move/from16 v13, v36

    .line 934
    const/16 v36, 0x0

    move/from16 v14, v36

    .line 935
    const/16 v36, 0x0

    move/from16 v15, v36

    .line 937
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v36, v0

    if-nez v36, :cond_1

    .line 938
    :cond_0
    move-object/from16 v36, v2

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 939
    move-object/from16 v36, v2

    const/16 v37, 0x4

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 942
    :cond_1
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v36, v0

    move-object/from16 v16, v36

    .line 943
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v36, v0

    move-object/from16 v17, v36

    .line 945
    move-object/from16 v36, v16

    const/16 v37, 0x0

    move-object/from16 v38, v16

    const/16 v39, 0x1

    move-object/from16 v40, v16

    const/16 v41, 0x2

    move-object/from16 v42, v16

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 946
    move-object/from16 v36, v17

    const/16 v37, 0x0

    move-object/from16 v38, v17

    const/16 v39, 0x1

    move-object/from16 v40, v17

    const/16 v41, 0x2

    move-object/from16 v42, v17

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 948
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v36, v0

    move/from16 v18, v36

    .line 949
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v36, v0

    move/from16 v19, v36

    .line 951
    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v36, 0x1

    :goto_0
    move/from16 v20, v36

    .line 953
    const/high16 v36, -0x80000000

    move/from16 v21, v36

    .line 956
    const/16 v36, 0x0

    move/from16 v22, v36

    :goto_1
    move/from16 v36, v22

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    .line 957
    move-object/from16 v36, v2

    move/from16 v37, v22

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v23, v36

    .line 959
    move-object/from16 v36, v23

    if-nez v36, :cond_3

    .line 960
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move/from16 v39, v22

    invoke-virtual/range {v38 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 956
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 951
    :cond_2
    const/16 v36, 0x0

    goto :goto_0

    .line 964
    :cond_3
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 965
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v37

    add-int v36, v36, v37

    move/from16 v22, v36

    .line 966
    goto :goto_2

    .line 969
    :cond_4
    move-object/from16 v36, v2

    move/from16 v37, v22

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 970
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 973
    :cond_5
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v36

    .line 976
    move/from16 v36, v10

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v10, v36

    .line 978
    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v0

    if-nez v36, :cond_b

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_b

    .line 982
    move/from16 v36, v20

    if-eqz v36, :cond_9

    .line 983
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v24

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 995
    :goto_3
    move/from16 v36, v18

    if-eqz v36, :cond_a

    .line 996
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    move/from16 v25, v36

    .line 997
    move-object/from16 v36, v23

    move/from16 v37, v25

    move/from16 v38, v25

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    .line 1040
    :cond_6
    :goto_4
    const/16 v36, 0x0

    move/from16 v25, v36

    .line 1041
    move/from16 v36, v13

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_7

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 1045
    const/16 v36, 0x1

    move/from16 v14, v36

    .line 1046
    const/16 v36, 0x1

    move/from16 v25, v36

    .line 1049
    :cond_7
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v36, v0

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v26, v36

    .line 1050
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v36

    move/from16 v37, v26

    add-int v36, v36, v37

    move/from16 v27, v36

    .line 1051
    move/from16 v36, v6

    move-object/from16 v37, v23

    invoke-static/range {v37 .. v37}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v36

    move/from16 v6, v36

    .line 1054
    move/from16 v36, v18

    if-eqz v36, :cond_8

    .line 1055
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBaseline()I

    move-result v36

    move/from16 v28, v36

    .line 1056
    move/from16 v36, v28

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_8

    .line 1059
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    if-gez v36, :cond_10

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v36, v0

    :goto_5
    const/16 v37, 0x70

    and-int/lit8 v36, v36, 0x70

    move/from16 v29, v36

    .line 1061
    move/from16 v36, v29

    const/16 v37, 0x4

    shr-int/lit8 v36, v36, 0x4

    const/16 v37, -0x2

    and-int/lit8 v36, v36, -0x2

    const/16 v37, 0x1

    shr-int/lit8 v36, v36, 0x1

    move/from16 v30, v36

    .line 1064
    move-object/from16 v36, v16

    move/from16 v37, v30

    move-object/from16 v38, v16

    move/from16 v39, v30

    aget v38, v38, v39

    move/from16 v39, v28

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    .line 1065
    move-object/from16 v36, v17

    move/from16 v37, v30

    move-object/from16 v38, v17

    move/from16 v39, v30

    aget v38, v38, v39

    move/from16 v39, v27

    move/from16 v40, v28

    sub-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    .line 1069
    :cond_8
    move/from16 v36, v5

    move/from16 v37, v27

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1071
    move/from16 v36, v9

    if-eqz v36, :cond_11

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    const/16 v36, 0x1

    :goto_6
    move/from16 v9, v36

    .line 1072
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_13

    .line 1077
    move/from16 v36, v8

    move/from16 v37, v25

    if-eqz v37, :cond_12

    move/from16 v37, v26

    :goto_7
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v8, v36

    .line 1084
    :goto_8
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v37

    add-int v36, v36, v37

    move/from16 v22, v36

    goto/16 :goto_2

    .line 985
    :cond_9
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v25, v36

    .line 986
    move-object/from16 v36, v2

    move/from16 v37, v25

    move/from16 v38, v25

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_3

    .line 999
    :cond_a
    const/16 v36, 0x1

    move/from16 v15, v36

    goto/16 :goto_4

    .line 1002
    :cond_b
    const/high16 v36, -0x80000000

    move/from16 v25, v36

    .line 1004
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v0

    if-nez v36, :cond_c

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_c

    .line 1009
    const/16 v36, 0x0

    move/from16 v25, v36

    .line 1010
    move-object/from16 v36, v24

    const/16 v37, -0x2

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1017
    :cond_c
    move-object/from16 v36, v2

    move-object/from16 v37, v23

    move/from16 v38, v22

    move/from16 v39, v3

    move/from16 v40, v10

    const/16 v41, 0x0

    cmpl-float v40, v40, v41

    if-nez v40, :cond_e

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v0

    :goto_9
    move/from16 v41, v4

    const/16 v42, 0x0

    invoke-virtual/range {v36 .. v42}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1021
    move/from16 v36, v25

    const/high16 v37, -0x80000000

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_d

    .line 1022
    move-object/from16 v36, v24

    move/from16 v37, v25

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1025
    :cond_d
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    move/from16 v26, v36

    .line 1026
    move/from16 v36, v20

    if-eqz v36, :cond_f

    .line 1027
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v38, v26

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    invoke-virtual/range {v39 .. v40}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1035
    :goto_a
    move/from16 v36, v19

    if-eqz v36, :cond_6

    .line 1036
    move/from16 v36, v26

    move/from16 v37, v21

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v21, v36

    goto/16 :goto_4

    .line 1017
    :cond_e
    const/16 v40, 0x0

    goto :goto_9

    .line 1030
    :cond_f
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v27, v36

    .line 1031
    move-object/from16 v36, v2

    move/from16 v37, v27

    move/from16 v38, v27

    move/from16 v39, v26

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    invoke-virtual/range {v39 .. v40}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_a

    .line 1059
    :cond_10
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    goto/16 :goto_5

    .line 1071
    :cond_11
    const/16 v36, 0x0

    goto/16 :goto_6

    .line 1077
    :cond_12
    move/from16 v37, v27

    goto/16 :goto_7

    .line 1080
    :cond_13
    move/from16 v36, v7

    move/from16 v37, v25

    if-eqz v37, :cond_14

    move/from16 v37, v26

    :goto_b
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v7, v36

    goto/16 :goto_8

    :cond_14
    move/from16 v37, v27

    goto :goto_b

    .line 1087
    :cond_15
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    if-lez v36, :cond_16

    move-object/from16 v36, v2

    move/from16 v37, v11

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v36

    if-eqz v36, :cond_16

    .line 1088
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1093
    :cond_16
    move-object/from16 v36, v16

    const/16 v37, 0x1

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v16

    const/16 v37, 0x0

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v16

    const/16 v37, 0x2

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_17

    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_18

    .line 1097
    :cond_17
    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v16

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v16

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v16

    const/16 v40, 0x2

    aget v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v22, v36

    .line 1100
    move-object/from16 v36, v17

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v17

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v17

    const/16 v40, 0x2

    aget v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v23, v36

    .line 1103
    move/from16 v36, v5

    move/from16 v37, v22

    move/from16 v38, v23

    add-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1106
    :cond_18
    move/from16 v36, v19

    if-eqz v36, :cond_1d

    move/from16 v36, v12

    const/high16 v37, -0x80000000

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    move/from16 v36, v12

    if-nez v36, :cond_1d

    .line 1108
    :cond_19
    move-object/from16 v36, v2

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1110
    const/16 v36, 0x0

    move/from16 v22, v36

    :goto_c
    move/from16 v36, v22

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 1111
    move-object/from16 v36, v2

    move/from16 v37, v22

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v23, v36

    .line 1113
    move-object/from16 v36, v23

    if-nez v36, :cond_1a

    .line 1114
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move/from16 v39, v22

    invoke-virtual/range {v38 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1110
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 1118
    :cond_1a
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1b

    .line 1119
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    invoke-virtual/range {v37 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v37

    add-int v36, v36, v37

    move/from16 v22, v36

    .line 1120
    goto :goto_d

    .line 1123
    :cond_1b
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v36

    .line 1125
    move/from16 v36, v20

    if-eqz v36, :cond_1c

    .line 1126
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v38, v21

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    invoke-virtual/range {v39 .. v40}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d

    .line 1129
    :cond_1c
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v25, v36

    .line 1130
    move-object/from16 v36, v2

    move/from16 v37, v25

    move/from16 v38, v25

    move/from16 v39, v21

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v23

    invoke-virtual/range {v39 .. v40}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_d

    .line 1137
    :cond_1d
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v38

    move-object/from16 v39, v2

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1139
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v22, v36

    .line 1142
    move/from16 v36, v22

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v22, v36

    .line 1145
    move/from16 v36, v22

    move/from16 v37, v3

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v36

    move/from16 v23, v36

    .line 1146
    move/from16 v36, v23

    const v37, 0xffffff

    and-int v36, v36, v37

    move/from16 v22, v36

    .line 1151
    move/from16 v36, v22

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v24, v36

    .line 1152
    move/from16 v36, v15

    if-nez v36, :cond_1e

    move/from16 v36, v24

    if-eqz v36, :cond_31

    move/from16 v36, v10

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_31

    .line 1153
    :cond_1e
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v36, v0

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_20

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v36, v0

    :goto_e
    move/from16 v25, v36

    .line 1155
    move-object/from16 v36, v16

    const/16 v37, 0x0

    move-object/from16 v38, v16

    const/16 v39, 0x1

    move-object/from16 v40, v16

    const/16 v41, 0x2

    move-object/from16 v42, v16

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 1156
    move-object/from16 v36, v17

    const/16 v37, 0x0

    move-object/from16 v38, v17

    const/16 v39, 0x1

    move-object/from16 v40, v17

    const/16 v41, 0x2

    move-object/from16 v42, v17

    const/16 v43, 0x3

    const/16 v44, -0x1

    move-object/from16 v46, v42

    move/from16 v47, v43

    move/from16 v48, v44

    move/from16 v42, v48

    move-object/from16 v43, v46

    move/from16 v44, v47

    move/from16 v45, v48

    aput v45, v43, v44

    move-object/from16 v46, v40

    move/from16 v47, v41

    move/from16 v48, v42

    move/from16 v40, v48

    move-object/from16 v41, v46

    move/from16 v42, v47

    move/from16 v43, v48

    aput v43, v41, v42

    move-object/from16 v46, v38

    move/from16 v47, v39

    move/from16 v48, v40

    move/from16 v38, v48

    move-object/from16 v39, v46

    move/from16 v40, v47

    move/from16 v41, v48

    aput v41, v39, v40

    aput v38, v36, v37

    .line 1157
    const/16 v36, -0x1

    move/from16 v5, v36

    .line 1159
    move-object/from16 v36, v2

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1161
    const/16 v36, 0x0

    move/from16 v26, v36

    :goto_f
    move/from16 v36, v26

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_2c

    .line 1162
    move-object/from16 v36, v2

    move/from16 v37, v26

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v27, v36

    .line 1164
    move-object/from16 v36, v27

    if-eqz v36, :cond_1f

    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    .line 1161
    :cond_1f
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1153
    :cond_20
    move/from16 v36, v10

    goto/16 :goto_e

    .line 1168
    :cond_21
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v28, v36

    .line 1171
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    move/from16 v29, v36

    .line 1172
    move/from16 v36, v29

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_24

    .line 1174
    move/from16 v36, v29

    move/from16 v37, v24

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v37, v25

    div-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v30, v36

    .line 1175
    move/from16 v36, v25

    move/from16 v37, v29

    sub-float v36, v36, v37

    move/from16 v25, v36

    .line 1176
    move/from16 v36, v24

    move/from16 v37, v30

    sub-int v36, v36, v37

    move/from16 v24, v36

    .line 1178
    move/from16 v36, v4

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v38, v0

    invoke-static/range {v36 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v36

    move/from16 v31, v36

    .line 1185
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v0

    if-nez v36, :cond_22

    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_25

    .line 1188
    :cond_22
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredWidth()I

    move-result v36

    move/from16 v37, v30

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 1189
    move/from16 v36, v32

    if-gez v36, :cond_23

    .line 1190
    const/16 v36, 0x0

    move/from16 v32, v36

    .line 1193
    :cond_23
    move-object/from16 v36, v27

    move/from16 v37, v32

    const/high16 v38, 0x40000000    # 2.0f

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move/from16 v38, v31

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    .line 1204
    :goto_11
    move/from16 v36, v6

    move-object/from16 v37, v27

    invoke-static/range {v37 .. v37}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v37

    const/high16 v38, -0x1000000

    and-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v36

    move/from16 v6, v36

    .line 1208
    :cond_24
    move/from16 v36, v20

    if-eqz v36, :cond_27

    .line 1209
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v27

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v27

    invoke-virtual/range {v39 .. v40}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1217
    :goto_12
    move/from16 v36, v13

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_28

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_28

    const/16 v36, 0x1

    :goto_13
    move/from16 v30, v36

    .line 1220
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v36, v0

    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v31, v36

    .line 1221
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    move-result v36

    move/from16 v37, v31

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 1222
    move/from16 v36, v5

    move/from16 v37, v32

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1223
    move/from16 v36, v7

    move/from16 v37, v30

    if-eqz v37, :cond_29

    move/from16 v37, v31

    :goto_14
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v7, v36

    .line 1226
    move/from16 v36, v9

    if-eqz v36, :cond_2a

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v36, v0

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2a

    const/16 v36, 0x1

    :goto_15
    move/from16 v9, v36

    .line 1228
    move/from16 v36, v18

    if-eqz v36, :cond_1f

    .line 1229
    move-object/from16 v36, v27

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBaseline()I

    move-result v36

    move/from16 v33, v36

    .line 1230
    move/from16 v36, v33

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1f

    .line 1232
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    if-gez v36, :cond_2b

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move/from16 v36, v0

    :goto_16
    const/16 v37, 0x70

    and-int/lit8 v36, v36, 0x70

    move/from16 v34, v36

    .line 1234
    move/from16 v36, v34

    const/16 v37, 0x4

    shr-int/lit8 v36, v36, 0x4

    const/16 v37, -0x2

    and-int/lit8 v36, v36, -0x2

    const/16 v37, 0x1

    shr-int/lit8 v36, v36, 0x1

    move/from16 v35, v36

    .line 1237
    move-object/from16 v36, v16

    move/from16 v37, v35

    move-object/from16 v38, v16

    move/from16 v39, v35

    aget v38, v38, v39

    move/from16 v39, v33

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    .line 1238
    move-object/from16 v36, v17

    move/from16 v37, v35

    move-object/from16 v38, v17

    move/from16 v39, v35

    aget v38, v38, v39

    move/from16 v39, v32

    move/from16 v40, v33

    sub-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    aput v38, v36, v37

    goto/16 :goto_10

    .line 1198
    :cond_25
    move-object/from16 v36, v27

    move/from16 v37, v30

    if-lez v37, :cond_26

    move/from16 v37, v30

    :goto_17
    const/high16 v38, 0x40000000    # 2.0f

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move/from16 v38, v31

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    :cond_26
    const/16 v37, 0x0

    goto :goto_17

    .line 1212
    :cond_27
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v36, v0

    move/from16 v30, v36

    .line 1213
    move-object/from16 v36, v2

    move/from16 v37, v30

    move/from16 v38, v30

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v2

    move-object/from16 v40, v27

    invoke-virtual/range {v39 .. v40}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v39

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_12

    .line 1217
    :cond_28
    const/16 v36, 0x0

    goto/16 :goto_13

    .line 1223
    :cond_29
    move/from16 v37, v32

    goto/16 :goto_14

    .line 1226
    :cond_2a
    const/16 v36, 0x0

    goto/16 :goto_15

    .line 1232
    :cond_2b
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v36, v0

    goto/16 :goto_16

    .line 1245
    :cond_2c
    move-object/from16 v36, v2

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v38

    move-object/from16 v39, v2

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v39

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1250
    move-object/from16 v36, v16

    const/16 v37, 0x1

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v16

    const/16 v37, 0x0

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v16

    const/16 v37, 0x2

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2e

    .line 1254
    :cond_2d
    move-object/from16 v36, v16

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v16

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v16

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v16

    const/16 v40, 0x2

    aget v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v26, v36

    .line 1257
    move-object/from16 v36, v17

    const/16 v37, 0x3

    aget v36, v36, v37

    move-object/from16 v37, v17

    const/16 v38, 0x0

    aget v37, v37, v38

    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    move-object/from16 v39, v17

    const/16 v40, 0x2

    aget v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v27, v36

    .line 1260
    move/from16 v36, v5

    move/from16 v37, v26

    move/from16 v38, v27

    add-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1289
    :cond_2e
    move/from16 v36, v9

    if-nez v36, :cond_2f

    move/from16 v36, v13

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2f

    .line 1290
    move/from16 v36, v7

    move/from16 v5, v36

    .line 1293
    :cond_2f
    move/from16 v36, v5

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    add-int v36, v36, v37

    move/from16 v5, v36

    .line 1296
    move/from16 v36, v5

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v5, v36

    .line 1298
    move-object/from16 v36, v2

    move/from16 v37, v23

    move/from16 v38, v6

    const/high16 v39, -0x1000000

    and-int v38, v38, v39

    or-int v37, v37, v38

    move/from16 v38, v5

    move/from16 v39, v4

    move/from16 v40, v6

    const/16 v41, 0x10

    shl-int/lit8 v40, v40, 0x10

    invoke-static/range {v38 .. v40}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1302
    move/from16 v36, v14

    if-eqz v36, :cond_30

    .line 1303
    move-object/from16 v36, v2

    move/from16 v37, v11

    move/from16 v38, v3

    invoke-direct/range {v36 .. v38}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1305
    :cond_30
    return-void

    .line 1263
    :cond_31
    move/from16 v36, v7

    move/from16 v37, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v7, v36

    .line 1267
    move/from16 v36, v19

    if-eqz v36, :cond_2e

    move/from16 v36, v12

    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_2e

    .line 1268
    const/16 v36, 0x0

    move/from16 v25, v36

    :goto_18
    move/from16 v36, v25

    move/from16 v37, v11

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_2e

    .line 1269
    move-object/from16 v36, v2

    move/from16 v37, v25

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v26, v36

    .line 1271
    move-object/from16 v36, v26

    if-eqz v36, :cond_32

    move-object/from16 v36, v26

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_33

    .line 1268
    :cond_32
    :goto_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_18

    .line 1275
    :cond_33
    move-object/from16 v36, v26

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v27, v36

    .line 1278
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v36, v0

    move/from16 v28, v36

    .line 1279
    move/from16 v36, v28

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_32

    .line 1280
    move-object/from16 v36, v26

    move/from16 v37, v21

    const/high16 v38, 0x40000000    # 2.0f

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move-object/from16 v38, v26

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {v36 .. v38}, Landroid/view/View;->measure(II)V

    goto :goto_19
.end method

.method measureNullChild(I)I
    .locals 3

    .prologue
    .line 1352
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method measureVertical(II)V
    .locals 40

    .prologue
    .line 588
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v31, v2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 589
    const/16 v31, 0x0

    move/from16 v5, v31

    .line 590
    const/16 v31, 0x0

    move/from16 v6, v31

    .line 591
    const/16 v31, 0x0

    move/from16 v7, v31

    .line 592
    const/16 v31, 0x0

    move/from16 v8, v31

    .line 593
    const/16 v31, 0x1

    move/from16 v9, v31

    .line 594
    const/16 v31, 0x0

    move/from16 v10, v31

    .line 596
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v31

    move/from16 v11, v31

    .line 598
    move/from16 v31, v3

    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v31

    move/from16 v12, v31

    .line 599
    move/from16 v31, v4

    invoke-static/range {v31 .. v31}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v31

    move/from16 v13, v31

    .line 601
    const/16 v31, 0x0

    move/from16 v14, v31

    .line 602
    const/16 v31, 0x0

    move/from16 v15, v31

    .line 604
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move/from16 v31, v0

    move/from16 v16, v31

    .line 605
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v31, v0

    move/from16 v17, v31

    .line 607
    const/high16 v31, -0x80000000

    move/from16 v18, v31

    .line 610
    const/16 v31, 0x0

    move/from16 v19, v31

    :goto_0
    move/from16 v31, v19

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 611
    move-object/from16 v31, v2

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v20, v31

    .line 613
    move-object/from16 v31, v20

    if-nez v31, :cond_0

    .line 614
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 610
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 618
    :cond_0
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 619
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v19

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v32

    add-int v31, v31, v32

    move/from16 v19, v31

    .line 620
    goto :goto_1

    .line 623
    :cond_1
    move-object/from16 v31, v2

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 624
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 627
    :cond_2
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v21, v31

    .line 629
    move/from16 v31, v10

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v10, v31

    .line 631
    move/from16 v31, v13

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v31, v0

    if-nez v31, :cond_5

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_5

    .line 635
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v22, v31

    .line 636
    move-object/from16 v31, v2

    move/from16 v32, v22

    move/from16 v33, v22

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 637
    const/16 v31, 0x1

    move/from16 v15, v31

    .line 676
    :cond_3
    :goto_2
    move/from16 v31, v16

    if-ltz v31, :cond_4

    move/from16 v31, v16

    move/from16 v32, v19

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 677
    move-object/from16 v31, v2

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 683
    :cond_4
    move/from16 v31, v19

    move/from16 v32, v16

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_9

    .line 684
    new-instance v31, Ljava/lang/RuntimeException;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    const-string v33, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct/range {v32 .. v33}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 639
    :cond_5
    const/high16 v31, -0x80000000

    move/from16 v22, v31

    .line 641
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v31, v0

    if-nez v31, :cond_6

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_6

    .line 646
    const/16 v31, 0x0

    move/from16 v22, v31

    .line 647
    move-object/from16 v31, v21

    const/16 v32, -0x2

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 654
    :cond_6
    move-object/from16 v31, v2

    move-object/from16 v32, v20

    move/from16 v33, v19

    move/from16 v34, v3

    const/16 v35, 0x0

    move/from16 v36, v4

    move/from16 v37, v10

    const/16 v38, 0x0

    cmpl-float v37, v37, v38

    if-nez v37, :cond_8

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v0

    :goto_3
    invoke-virtual/range {v31 .. v37}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 658
    move/from16 v31, v22

    const/high16 v32, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 659
    move-object/from16 v31, v21

    move/from16 v32, v22

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 662
    :cond_7
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move/from16 v23, v31

    .line 663
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v24, v31

    .line 664
    move-object/from16 v31, v2

    move/from16 v32, v24

    move/from16 v33, v24

    move/from16 v34, v23

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v20

    invoke-virtual/range {v34 .. v35}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 667
    move/from16 v31, v17

    if-eqz v31, :cond_3

    .line 668
    move/from16 v31, v23

    move/from16 v32, v18

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v18, v31

    goto/16 :goto_2

    .line 654
    :cond_8
    const/16 v37, 0x0

    goto :goto_3

    .line 690
    :cond_9
    const/16 v31, 0x0

    move/from16 v22, v31

    .line 691
    move/from16 v31, v12

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 696
    const/16 v31, 0x1

    move/from16 v14, v31

    .line 697
    const/16 v31, 0x1

    move/from16 v22, v31

    .line 700
    :cond_a
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v23, v31

    .line 701
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move/from16 v32, v23

    add-int v31, v31, v32

    move/from16 v24, v31

    .line 702
    move/from16 v31, v5

    move/from16 v32, v24

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v5, v31

    .line 703
    move/from16 v31, v6

    move-object/from16 v32, v20

    invoke-static/range {v32 .. v32}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v32

    invoke-static/range {v31 .. v32}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v31

    move/from16 v6, v31

    .line 706
    move/from16 v31, v9

    if-eqz v31, :cond_b

    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/16 v31, 0x1

    :goto_4
    move/from16 v9, v31

    .line 707
    move-object/from16 v31, v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_d

    .line 712
    move/from16 v31, v8

    move/from16 v32, v22

    if-eqz v32, :cond_c

    move/from16 v32, v23

    :goto_5
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v8, v31

    .line 719
    :goto_6
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v19

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v32

    add-int v31, v31, v32

    move/from16 v19, v31

    goto/16 :goto_1

    .line 706
    :cond_b
    const/16 v31, 0x0

    goto :goto_4

    .line 712
    :cond_c
    move/from16 v32, v24

    goto :goto_5

    .line 715
    :cond_d
    move/from16 v31, v7

    move/from16 v32, v22

    if-eqz v32, :cond_e

    move/from16 v32, v23

    :goto_7
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v7, v31

    goto :goto_6

    :cond_e
    move/from16 v32, v24

    goto :goto_7

    .line 722
    :cond_f
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    if-lez v31, :cond_10

    move-object/from16 v31, v2

    move/from16 v32, v11

    invoke-virtual/range {v31 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 723
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 726
    :cond_10
    move/from16 v31, v17

    if-eqz v31, :cond_14

    move/from16 v31, v13

    const/high16 v32, -0x80000000

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_11

    move/from16 v31, v13

    if-nez v31, :cond_14

    .line 728
    :cond_11
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 730
    const/16 v31, 0x0

    move/from16 v19, v31

    :goto_8
    move/from16 v31, v19

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_14

    .line 731
    move-object/from16 v31, v2

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v20, v31

    .line 733
    move-object/from16 v31, v20

    if-nez v31, :cond_12

    .line 734
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    move/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 730
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 738
    :cond_12
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 739
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v19

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v32

    add-int v31, v31, v32

    move/from16 v19, v31

    .line 740
    goto :goto_9

    .line 743
    :cond_13
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v21, v31

    .line 746
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v22, v31

    .line 747
    move-object/from16 v31, v2

    move/from16 v32, v22

    move/from16 v33, v22

    move/from16 v34, v18

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v21

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v20

    invoke-virtual/range {v34 .. v35}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_9

    .line 753
    :cond_14
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v33

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v34

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 755
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v19, v31

    .line 758
    move/from16 v31, v19

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v19, v31

    .line 761
    move/from16 v31, v19

    move/from16 v32, v4

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v31

    move/from16 v20, v31

    .line 762
    move/from16 v31, v20

    const v32, 0xffffff

    and-int v31, v31, v32

    move/from16 v19, v31

    .line 767
    move/from16 v31, v19

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v21, v31

    .line 768
    move/from16 v31, v15

    if-nez v31, :cond_15

    move/from16 v31, v21

    if-eqz v31, :cond_24

    move/from16 v31, v10

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_24

    .line 769
    :cond_15
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_16

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v31, v0

    :goto_a
    move/from16 v22, v31

    .line 771
    move-object/from16 v31, v2

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 773
    const/16 v31, 0x0

    move/from16 v23, v31

    :goto_b
    move/from16 v31, v23

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_20

    .line 774
    move-object/from16 v31, v2

    move/from16 v32, v23

    invoke-virtual/range {v31 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v24, v31

    .line 776
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 773
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 769
    :cond_16
    move/from16 v31, v10

    goto :goto_a

    .line 780
    :cond_17
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v25, v31

    .line 782
    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    move/from16 v26, v31

    .line 783
    move/from16 v31, v26

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_1a

    .line 785
    move/from16 v31, v26

    move/from16 v32, v21

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v32, v22

    div-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v27, v31

    .line 786
    move/from16 v31, v22

    move/from16 v32, v26

    sub-float v31, v31, v32

    move/from16 v22, v31

    .line 787
    move/from16 v31, v21

    move/from16 v32, v27

    sub-int v31, v31, v32

    move/from16 v21, v31

    .line 789
    move/from16 v31, v3

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v33, v0

    invoke-static/range {v31 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v31

    move/from16 v28, v31

    .line 795
    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v31, v0

    if-nez v31, :cond_18

    move/from16 v31, v13

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 798
    :cond_18
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    move/from16 v32, v27

    add-int v31, v31, v32

    move/from16 v29, v31

    .line 799
    move/from16 v31, v29

    if-gez v31, :cond_19

    .line 800
    const/16 v31, 0x0

    move/from16 v29, v31

    .line 803
    :cond_19
    move-object/from16 v31, v24

    move/from16 v32, v28

    move/from16 v33, v29

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    .line 814
    :goto_d
    move/from16 v31, v6

    move-object/from16 v32, v24

    invoke-static/range {v32 .. v32}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v32

    const/16 v33, -0x100

    move/from16 v0, v32

    and-int/lit16 v0, v0, -0x100

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v31

    move/from16 v6, v31

    .line 819
    :cond_1a
    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v27, v31

    .line 820
    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    move/from16 v32, v27

    add-int v31, v31, v32

    move/from16 v28, v31

    .line 821
    move/from16 v31, v5

    move/from16 v32, v28

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v5, v31

    .line 823
    move/from16 v31, v12

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1d

    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    const/16 v31, 0x1

    :goto_e
    move/from16 v29, v31

    .line 826
    move/from16 v31, v7

    move/from16 v32, v29

    if-eqz v32, :cond_1e

    move/from16 v32, v27

    :goto_f
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v7, v31

    .line 829
    move/from16 v31, v9

    if-eqz v31, :cond_1f

    move-object/from16 v31, v25

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    const/16 v31, 0x1

    :goto_10
    move/from16 v9, v31

    .line 831
    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v0

    move/from16 v30, v31

    .line 832
    move-object/from16 v31, v2

    move/from16 v32, v30

    move/from16 v33, v30

    move-object/from16 v34, v24

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v34

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v2

    move-object/from16 v35, v24

    invoke-virtual/range {v34 .. v35}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v34

    add-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_c

    .line 808
    :cond_1b
    move-object/from16 v31, v24

    move/from16 v32, v28

    move/from16 v33, v27

    if-lez v33, :cond_1c

    move/from16 v33, v27

    :goto_11
    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    goto/16 :goto_d

    :cond_1c
    const/16 v33, 0x0

    goto :goto_11

    .line 823
    :cond_1d
    const/16 v31, 0x0

    goto/16 :goto_e

    .line 826
    :cond_1e
    move/from16 v32, v28

    goto :goto_f

    .line 829
    :cond_1f
    const/16 v31, 0x0

    goto :goto_10

    .line 837
    :cond_20
    move-object/from16 v31, v2

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v0

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v33

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v34

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 869
    :cond_21
    move/from16 v31, v9

    if-nez v31, :cond_22

    move/from16 v31, v12

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_22

    .line 870
    move/from16 v31, v7

    move/from16 v5, v31

    .line 873
    :cond_22
    move/from16 v31, v5

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    add-int v31, v31, v32

    move/from16 v5, v31

    .line 876
    move/from16 v31, v5

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v5, v31

    .line 878
    move-object/from16 v31, v2

    move/from16 v32, v5

    move/from16 v33, v3

    move/from16 v34, v6

    invoke-static/range {v32 .. v34}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v32

    move/from16 v33, v20

    invoke-virtual/range {v31 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 881
    move/from16 v31, v14

    if-eqz v31, :cond_23

    .line 882
    move-object/from16 v31, v2

    move/from16 v32, v11

    move/from16 v33, v4

    invoke-direct/range {v31 .. v33}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 884
    :cond_23
    return-void

    .line 840
    :cond_24
    move/from16 v31, v7

    move/from16 v32, v8

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v7, v31

    .line 846
    move/from16 v31, v17

    if-eqz v31, :cond_21

    move/from16 v31, v13

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_21

    .line 847
    const/16 v31, 0x0

    move/from16 v22, v31

    :goto_12
    move/from16 v31, v22

    move/from16 v32, v11

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_21

    .line 848
    move-object/from16 v31, v2

    move/from16 v32, v22

    invoke-virtual/range {v31 .. v32}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v23, v31

    .line 850
    move-object/from16 v31, v23

    if-eqz v31, :cond_25

    move-object/from16 v31, v23

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 847
    :cond_25
    :goto_13
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    .line 854
    :cond_26
    move-object/from16 v31, v23

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v31

    .line 857
    move-object/from16 v31, v24

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v31, v0

    move/from16 v25, v31

    .line 858
    move/from16 v31, v25

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_25

    .line 859
    move-object/from16 v31, v23

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    const/high16 v33, 0x40000000    # 2.0f

    invoke-static/range {v32 .. v33}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    move/from16 v33, v18

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 282
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 286
    :goto_1
    goto :goto_0

    .line 284
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 1739
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1740
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1741
    move-object v2, v1

    const-class v3, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1743
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1746
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1747
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1748
    move-object v2, v1

    const-class v3, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1750
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 1400
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1401
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    .line 1405
    :goto_0
    return-void

    .line 1403
    :cond_0
    move-object v6, v0

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 544
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 545
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 4

    .prologue
    .line 386
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 387
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 7

    .prologue
    .line 482
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 483
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "base aligned child index out of range (0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 487
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_0

    .line 240
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 231
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 232
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 233
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 238
    :goto_1
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 239
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 240
    goto :goto_0

    .line 235
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 236
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1

    .line 238
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setDividerPadding(I)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 253
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 1673
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    move v3, v1

    if-eq v2, v3, :cond_2

    .line 1674
    move v2, v1

    const v3, 0x800007

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1675
    move v2, v1

    const v3, 0x800003

    or-int/2addr v2, v3

    move v1, v2

    .line 1678
    :cond_0
    move v2, v1

    const/16 v3, 0x70

    and-int/lit8 v2, v2, 0x70

    if-nez v2, :cond_1

    .line 1679
    move v2, v1

    const/16 v3, 0x30

    or-int/lit8 v2, v2, 0x30

    move v1, v2

    .line 1682
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1683
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1685
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 6

    .prologue
    .line 1688
    move-object v0, p0

    move v1, p1

    move v3, v1

    const v4, 0x800007

    and-int/2addr v3, v4

    move v2, v3

    .line 1689
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 1690
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v5, -0x800008

    and-int/2addr v4, v5

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1691
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1693
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 413
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 1648
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1649
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1650
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1652
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq v2, v3, :cond_0

    .line 191
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 193
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 194
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 6

    .prologue
    .line 1696
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v2, v3

    .line 1697
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 1698
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const/16 v5, -0x71

    and-int/lit8 v4, v4, -0x71

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1699
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1701
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 5

    .prologue
    .line 539
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 540
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
