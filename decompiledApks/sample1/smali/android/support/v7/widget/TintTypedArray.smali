.class public Landroid/support/v7/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 55
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 44
    new-instance v4, Landroid/support/v7/widget/TintTypedArray;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v0, v4

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    .locals 12

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 50
    new-instance v6, Landroid/support/v7/widget/TintTypedArray;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getColor(II)I
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDimension(IF)F
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    move v0, v3

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v2, v3

    .line 61
    move v3, v2

    if-eqz v3, :cond_0

    .line 62
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 65
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v2, v3

    .line 71
    move v3, v2

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v3

    move v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/TintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    move v0, v3

    return v0
.end method

.method public getFraction(IIIF)F
    .locals 10

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v5

    move v0, v5

    return v0
.end method

.method public getIndex(I)I
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getInteger(II)I
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getResourceId(II)I
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getTintManager()Landroid/support/v7/widget/TintManager;
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-nez v1, :cond_0

    .line 192
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 194
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;

    move-object v0, v1

    return-object v0
.end method

.method public getType(I)I
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public hasValue(I)Z
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method
