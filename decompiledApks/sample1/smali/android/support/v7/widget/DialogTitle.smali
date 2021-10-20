.class public Landroid/support/v7/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/TextView;->onMeasure(II)V

    .line 51
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v8

    move-object v3, v8

    .line 52
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 53
    move-object v8, v3

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    move v4, v8

    .line 54
    move v8, v4

    if-lez v8, :cond_1

    .line 55
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v8

    move v5, v8

    .line 56
    move v8, v5

    if-lez v8, :cond_1

    .line 57
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/DialogTitle;->setSingleLine(Z)V

    .line 58
    move-object v8, v0

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/DialogTitle;->setMaxLines(I)V

    .line 60
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/DialogTitle;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    const v11, 0x1010041

    const v12, 0x1030044

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v6, v8

    .line 64
    move-object v8, v6

    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    move v7, v8

    .line 66
    move v8, v7

    if-eqz v8, :cond_0

    .line 68
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v7

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/DialogTitle;->setTextSize(IF)V

    .line 70
    :cond_0
    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/TextView;->onMeasure(II)V

    .line 76
    :cond_1
    return-void
.end method
