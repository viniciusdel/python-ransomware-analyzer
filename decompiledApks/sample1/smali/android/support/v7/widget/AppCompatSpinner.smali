.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;,
        Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final IS_AT_LEAST_JB:Z

.field private static final IS_AT_LEAST_M:Z

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mDropDownWidth:I

.field private mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

.field private mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10102f1

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 17

    .prologue
    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 196
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    move v13, v3

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v10

    move-object v6, v10

    .line 199
    move-object v10, v0

    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v11

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 200
    move-object v10, v0

    new-instance v11, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v12, v13, v14}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 202
    move-object v10, v5

    if-eqz v10, :cond_4

    .line 203
    move-object v10, v0

    new-instance v11, Landroid/support/v7/view/ContextThemeWrapper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 215
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    .line 216
    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 217
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_8

    .line 219
    const/4 v10, 0x0

    move-object v7, v10

    .line 221
    move-object v10, v1

    move-object v11, v2

    :try_start_0
    sget-object v12, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v7, v10

    .line 223
    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 224
    move-object v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    move v4, v10

    .line 229
    :cond_0
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 230
    move-object v10, v7

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    :cond_1
    :goto_1
    move v10, v4

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 240
    new-instance v10, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object v14, v2

    move v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v7, v10

    .line 241
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object v11, v2

    sget-object v12, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    move v13, v3

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v10

    move-object v8, v10

    .line 243
    move-object v10, v0

    move-object v11, v8

    sget v12, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v11

    iput v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 245
    move-object v10, v7

    move-object v11, v8

    sget v12, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    move-object v10, v7

    move-object v11, v6

    sget v12, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 248
    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 250
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    .line 251
    move-object v10, v0

    new-instance v11, Landroid/support/v7/widget/AppCompatSpinner$1;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    move-object v14, v0

    move-object v15, v7

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v7/widget/AppCompatSpinner$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    .line 267
    :cond_2
    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 269
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z

    .line 273
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v10, :cond_3

    .line 274
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 275
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 278
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v11, v2

    move v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 279
    return-void

    .line 205
    :cond_4
    move-object v10, v6

    sget v11, Landroid/support/v7/appcompat/R$styleable;->Spinner_popupTheme:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    move v7, v10

    .line 206
    move v10, v7

    if-eqz v10, :cond_5

    .line 207
    move-object v10, v0

    new-instance v11, Landroid/support/v7/view/ContextThemeWrapper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    move v14, v7

    invoke-direct {v12, v13, v14}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 211
    :cond_5
    move-object v10, v0

    sget-boolean v11, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z

    if-nez v11, :cond_6

    move-object v11, v1

    :goto_2
    iput-object v11, v10, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 226
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 227
    :try_start_1
    const-string v10, "AppCompatSpinner"

    const-string v11, "Could not read android:spinnerMode"

    move-object v12, v8

    invoke-static {v10, v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 229
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 230
    move-object v10, v7

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 229
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v7

    if-eqz v10, :cond_7

    .line 230
    move-object v10, v7

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    move-object v10, v9

    throw v10

    .line 235
    :cond_8
    const/4 v10, 0x1

    move v4, v10

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/AppCompatSpinner;)I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/AppCompatSpinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method private compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 19

    .prologue
    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v1

    if-nez v13, :cond_0

    .line 521
    const/4 v13, 0x0

    move v0, v13

    .line 560
    :goto_0
    return v0

    .line 524
    :cond_0
    const/4 v13, 0x0

    move v3, v13

    .line 525
    const/4 v13, 0x0

    move-object v4, v13

    .line 526
    const/4 v13, 0x0

    move v5, v13

    .line 527
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v6, v13

    .line 529
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v7, v13

    .line 534
    const/4 v13, 0x0

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 535
    move-object v13, v1

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v13

    move v14, v8

    const/16 v15, 0xf

    add-int/lit8 v14, v14, 0xf

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v9, v13

    .line 536
    move v13, v9

    move v14, v8

    sub-int/2addr v13, v14

    move v10, v13

    .line 537
    const/4 v13, 0x0

    move v14, v8

    const/16 v15, 0xf

    move/from16 v16, v10

    rsub-int/lit8 v15, v16, 0xf

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 538
    move v13, v8

    move v11, v13

    :goto_1
    move v13, v11

    move v14, v9

    if-ge v13, v14, :cond_3

    .line 539
    move-object v13, v1

    move v14, v11

    invoke-interface {v13, v14}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v13

    move v12, v13

    .line 540
    move v13, v12

    move v14, v5

    if-eq v13, v14, :cond_1

    .line 541
    move v13, v12

    move v5, v13

    .line 542
    const/4 v13, 0x0

    move-object v4, v13

    .line 544
    :cond_1
    move-object v13, v1

    move v14, v11

    move-object v15, v4

    move-object/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object v4, v13

    .line 545
    move-object v13, v4

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    if-nez v13, :cond_2

    .line 546
    move-object v13, v4

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    :cond_2
    move-object v13, v4

    move v14, v6

    move v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 551
    move v13, v3

    move-object v14, v4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v3, v13

    .line 538
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 555
    :cond_3
    move-object v13, v2

    if-eqz v13, :cond_4

    .line 556
    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 557
    move v13, v3

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    move v3, v13

    .line 560
    :cond_4
    move v13, v3

    move v0, v13

    goto/16 :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 514
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 515
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 517
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 347
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOffset()I

    move-result v1

    move v0, v1

    .line 351
    :goto_0
    return v0

    .line 348
    :cond_0
    sget-boolean v1, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v1, :cond_1

    .line 349
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 351
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 324
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getVerticalOffset()I

    move-result v1

    move v0, v1

    .line 328
    :goto_0
    return v0

    .line 325
    :cond_0
    sget-boolean v1, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v1, :cond_1

    .line 326
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 328
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 364
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    move v0, v1

    .line 368
    :goto_0
    return v0

    .line 365
    :cond_0
    sget-boolean v1, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v1, :cond_1

    .line 366
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 307
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_0
    sget-boolean v1, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v1, :cond_1

    .line 309
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 286
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object v0, v1

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    sget-boolean v1, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z

    if-eqz v1, :cond_1

    .line 288
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 290
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 392
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 395
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    .line 407
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 409
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v4, :cond_0

    move v4, v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    .line 410
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v4

    move v3, v4

    .line 411
    move-object v4, v0

    move v5, v3

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 416
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const/4 v2, 0x1

    move v0, v2

    .line 402
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V

    .line 422
    const/4 v1, 0x1

    move v0, v1

    .line 424
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->performClick()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 9

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z

    if-nez v3, :cond_0

    .line 376
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 382
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v3, :cond_1

    .line 383
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 384
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    new-instance v4, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    :cond_1
    goto :goto_0

    .line 383
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 453
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 443
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 444
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 445
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 333
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    sget-boolean v2, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v2, :cond_0

    .line 335
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 316
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setVerticalOffset(I)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget-boolean v2, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v2, :cond_0

    .line 318
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 356
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget-boolean v2, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v2, :cond_0

    .line 358
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 295
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-boolean v2, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z

    if-eqz v2, :cond_0

    .line 297
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 302
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_0

    .line 430
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 467
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 469
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 494
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 496
    :cond_0
    return-void
.end method
