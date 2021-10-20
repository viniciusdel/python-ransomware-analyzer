.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final TEXT_APPEARANCE_ATTRS:[I

.field private static final VIEW_ATTRS:[I


# instance fields
.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field final mView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->VIEW_ATTRS:[I

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->textAllCaps:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelper;->TEXT_APPEARANCE_ATTRS:[I

    return-void

    .line 38
    :array_0
    .array-data 4
        0x1010034
        0x101016f
        0x101016d
        0x1010170
        0x101016e
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method static create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 33
    new-instance v1, Landroid/support/v7/widget/AppCompatTextHelperV17;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V

    move-object v0, v1

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v7/widget/AppCompatTextHelper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v3, v5

    .line 128
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 129
    new-instance v5, Landroid/support/v7/widget/TintInfo;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v7/widget/TintInfo;-><init>()V

    move-object v4, v5

    .line 130
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 131
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 133
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 121
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/TintManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 123
    :cond_0
    return-void
.end method

.method applyCompoundDrawablesTints()V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 112
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 113
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 114
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 115
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 117
    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, v8

    .line 56
    move-object v8, v3

    invoke-static {v8}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v8

    move-object v4, v8

    .line 59
    move-object v8, v3

    move-object v9, v1

    sget-object v10, Landroid/support/v7/widget/AppCompatTextHelper;->VIEW_ATTRS:[I

    move v11, v2

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 60
    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v6, v8

    .line 63
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 66
    :cond_0
    move-object v8, v5

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 69
    :cond_1
    move-object v8, v5

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 72
    :cond_2
    move-object v8, v5

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 75
    :cond_3
    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 79
    move-object v8, v3

    move v9, v6

    sget-object v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v7, v8

    .line 80
    move-object v8, v7

    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 81
    move-object v8, v0

    move-object v9, v7

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 83
    :cond_4
    move-object v8, v7

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    :cond_5
    move-object v8, v3

    move-object v9, v1

    sget-object v10, Landroid/support/v7/widget/AppCompatTextHelper;->TEXT_APPEARANCE_ATTRS:[I

    move v11, v2

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 88
    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 89
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 91
    :cond_6
    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    move v5, v2

    sget-object v6, Landroid/support/v7/widget/AppCompatTextHelper;->TEXT_APPEARANCE_ATTRS:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 96
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 99
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method setAllCaps(Z)V
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Landroid/support/v7/text/AllCapsTransformationMethod;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 106
    return-void

    .line 103
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
