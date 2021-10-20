.class public Landroid/support/v7/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/support/v7/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserView$InnerLayout;,
        Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/support/v7/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/support/v4/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    .prologue
    .line 211
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/ActivityChooserView$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ActivityChooserView$1;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 138
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/ActivityChooserView$2;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ActivityChooserView$2;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 172
    move-object v9, v0

    const/4 v10, 0x4

    iput v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 213
    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView:[I

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v4, v9

    .line 216
    move-object v9, v0

    move-object v10, v4

    sget v11, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView_initialActivityCount:I

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 220
    move-object v9, v4

    sget v10, Landroid/support/v7/appcompat/R$styleable;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v5, v9

    .line 223
    move-object v9, v4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    move-object v6, v9

    .line 226
    move-object v9, v6

    sget v10, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view:I

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 228
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/ActivityChooserView$Callbacks;-><init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/support/v7/widget/ActivityChooserView$1;)V

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    .line 230
    move-object v9, v0

    move-object v10, v0

    sget v11, Landroid/support/v7/appcompat/R$id;->activity_chooser_view_content:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat;

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 231
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 233
    move-object v9, v0

    move-object v10, v0

    sget v11, Landroid/support/v7/appcompat/R$id;->default_activity_button:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 234
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    sget v11, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 238
    move-object v9, v0

    sget v10, Landroid/support/v7/appcompat/R$id;->expand_activities_button:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    move-object v7, v9

    .line 239
    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    move-object v9, v7

    new-instance v10, Landroid/support/v7/widget/ActivityChooserView$3;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/ActivityChooserView$3;-><init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 259
    move-object v9, v0

    move-object v10, v7

    sget v11, Landroid/support/v7/appcompat/R$id;->image:I

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 261
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/support/v7/widget/ActivityChooserView$1;)V

    iput-object v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 264
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v10, Landroid/support/v7/widget/ActivityChooserView$4;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ActivityChooserView$4;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 272
    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v8, v9

    .line 273
    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move-object v11, v8

    sget v12, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 275
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActivityChooserView;I)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/ActivityChooserView;)Z
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$602(Landroid/support/v7/widget/ActivityChooserView;Z)Z
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ActivityChooserView;)I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    move v0, v1

    return v0
.end method

.method private getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;
    .locals 6

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    if-nez v1, :cond_0

    .line 504
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ListPopupWindow;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    .line 505
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 507
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 508
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 509
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 511
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    move-object v0, v1

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .locals 11

    .prologue
    .line 346
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v7

    if-nez v7, :cond_0

    .line 347
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "No data model. Did you call #setDataModel?"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 350
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 352
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 355
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v7

    move v3, v7

    .line 356
    move v7, v2

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 357
    move v7, v1

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_6

    move v7, v3

    move v8, v1

    move v9, v4

    add-int/2addr v8, v9

    if-le v7, v8, :cond_6

    .line 359
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 360
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 366
    :goto_2
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v7

    move-object v5, v7

    .line 367
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 368
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_1

    move v7, v2

    if-nez v7, :cond_7

    .line 369
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 373
    :goto_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 374
    move-object v7, v5

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 375
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 376
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v7, :cond_2

    .line 377
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 379
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 382
    :cond_3
    return-void

    .line 352
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 356
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 362
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 363
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 371
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_3
.end method

.method private updateAppearance()V
    .locals 14

    .prologue
    .line 519
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 520
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 525
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v7

    move v1, v7

    .line 526
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v7

    move v2, v7

    .line 527
    move v7, v1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    move v7, v1

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    move v7, v2

    if-lez v7, :cond_3

    .line 528
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 529
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    move-object v3, v7

    .line 530
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v4, v7

    .line 531
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v7, :cond_1

    .line 533
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v5, v7

    .line 534
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 536
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 543
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :goto_2
    return-void

    .line 522
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_0

    .line 539
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 545
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 392
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 393
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 397
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 412
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v2

    move-object v1, v2

    .line 413
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 414
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 416
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 417
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 421
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 422
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v3

    move-object v1, v3

    .line 423
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 424
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 426
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object v2, v3

    .line 427
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 430
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    move-result v3

    .line 433
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 434
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->layout(IIII)V

    .line 453
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v6

    if-nez v6, :cond_0

    .line 454
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    move-result v6

    .line 456
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 438
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    move-object v3, v4

    .line 442
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    move v4, v2

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v2, v4

    .line 446
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v1

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 447
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 448
    return-void
.end method

.method public setActivityChooserModel(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/support/v7/widget/ActivityChooserModel;)V

    .line 282
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    move-result v2

    .line 284
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->showPopup()Z

    move-result v2

    .line 286
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 4

    .prologue
    .line 494
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 495
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 5

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 315
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 481
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 469
    return-void
.end method

.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
    .locals 4

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    .line 324
    return-void
.end method

.method public showPopup()Z
    .locals 3

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 333
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 337
    :goto_0
    return v0

    .line 335
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 336
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 337
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
