.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 93
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 103
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 112
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 116
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/AlertController$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 167
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 168
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 169
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 170
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/AlertController$ButtonHandler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 172
    move-object v5, v1

    const/4 v6, 0x0

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v8, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 175
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 176
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 178
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 179
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 180
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 182
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 184
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/app/AlertController;)Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1002(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/app/AlertController;)I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mListLayout:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/app/AlertController;)I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/app/AlertController;)I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/app/AlertController;)I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1502(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1602(Landroid/support/v7/app/AlertController;I)I
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/app/AlertController;)Landroid/support/v4/widget/NestedScrollView;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v0, v1

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/4 v3, 0x1

    move v0, v3

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 193
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 196
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    .line 197
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v3

    .line 198
    :cond_2
    move v3, v2

    if-lez v3, :cond_3

    .line 199
    add-int/lit8 v2, v2, -0x1

    .line 200
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 201
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 206
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 702
    move-object v3, v1

    move-object v4, v0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 705
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 706
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_1
    return-void

    .line 702
    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    .line 706
    :cond_3
    const/4 v4, 0x4

    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_1

    .line 417
    move-object v4, v2

    instance-of v4, v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    .line 418
    move-object v4, v2

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 421
    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    .line 437
    :goto_0
    return-object v0

    .line 425
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 426
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 427
    move-object v4, v3

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 428
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_3

    .line 434
    move-object v4, v1

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 437
    :cond_3
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v1, :cond_0

    .line 219
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 222
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    move v0, v1

    goto :goto_0

    .line 224
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    move v0, v1

    goto :goto_0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 16

    .prologue
    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 514
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 516
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2

    .line 518
    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v9, v10, v11}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 520
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 521
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 523
    :cond_0
    move-object v9, v6

    if-eqz v9, :cond_1

    .line 524
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 529
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 530
    const/4 v9, 0x0

    move-object v5, v9

    .line 532
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_4

    move v9, v3

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    .line 533
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 534
    const/4 v9, 0x0

    move-object v6, v9

    .line 537
    :cond_4
    move-object v9, v5

    if-nez v9, :cond_5

    move-object v9, v6

    if-eqz v9, :cond_1

    .line 538
    :cond_5
    move-object v9, v5

    move-object v7, v9

    .line 539
    move-object v9, v6

    move-object v8, v9

    .line 541
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    .line 543
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v10, Landroid/support/v7/app/AlertController$2;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 553
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v10, Landroid/support/v7/app/AlertController$3;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_0

    .line 559
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_7

    .line 561
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v10, Landroid/support/v7/app/AlertController$4;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 572
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v10, Landroid/support/v7/app/AlertController$5;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_0

    .line 580
    :cond_7
    move-object v9, v7

    if-eqz v9, :cond_8

    .line 581
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 583
    :cond_8
    move-object v9, v8

    if-eqz v9, :cond_1

    .line 584
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x1

    move v2, v7

    .line 713
    const/4 v7, 0x2

    move v3, v7

    .line 714
    const/4 v7, 0x4

    move v4, v7

    .line 715
    const/4 v7, 0x0

    move v5, v7

    .line 716
    move-object v7, v0

    move-object v8, v1

    const v9, 0x1020019

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 717
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 720
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 727
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const v9, 0x102001a

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 728
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 731
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    :goto_1
    move-object v7, v0

    move-object v8, v1

    const v9, 0x102001b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 740
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 743
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 751
    :goto_2
    move v7, v5

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    move v6, v7

    .line 752
    move v7, v6

    if-nez v7, :cond_0

    .line 753
    move-object v7, v1

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 755
    :cond_0
    return-void

    .line 722
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 723
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 724
    move v7, v5

    move v8, v2

    or-int/2addr v7, v8

    move v5, v7

    goto :goto_0

    .line 733
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 734
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 736
    move v7, v5

    move v8, v3

    or-int/2addr v7, v8

    move v5, v7

    goto :goto_1

    .line 745
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 746
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 748
    move v7, v5

    move v8, v4

    or-int/2addr v7, v8

    move v5, v7

    goto :goto_2

    .line 751
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 672
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/NestedScrollView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 673
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 674
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 677
    move-object v4, v0

    move-object v5, v1

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 678
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 698
    :goto_0
    return-void

    .line 682
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 683
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :goto_1
    goto :goto_0

    .line 685
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 688
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 689
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v2, v4

    .line 690
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 691
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 692
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move v6, v3

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 694
    goto :goto_1

    .line 695
    :cond_2
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 594
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    move-object v2, v5

    .line 602
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 603
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 604
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x20000

    const/high16 v7, 0x20000

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 608
    :cond_1
    move v5, v3

    if-eqz v5, :cond_7

    .line 609
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    move-object v4, v5

    .line 610
    move-object v5, v4

    move-object v6, v2

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_2

    .line 613
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 617
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 618
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 623
    :cond_3
    :goto_2
    return-void

    .line 595
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v5, :cond_5

    .line 596
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v3, v5

    .line 597
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 598
    goto :goto_0

    .line 599
    :cond_5
    const/4 v5, 0x0

    move-object v2, v5

    goto :goto_0

    .line 602
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 621
    :cond_7
    move-object v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 628
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v2, v4

    .line 631
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 634
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 635
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :goto_0
    return-void

    .line 637
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 639
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 640
    move v4, v2

    if-eqz v4, :cond_4

    .line 642
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 643
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 649
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 639
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 650
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 651
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 655
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 659
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 663
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 664
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 665
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 24

    .prologue
    .line 441
    move-object/from16 v2, p0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    sget v20, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v3, v19

    .line 442
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v4, v19

    .line 443
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v5, v19

    .line 444
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v6, v19

    .line 448
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v7, v19

    .line 449
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 451
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v8, v19

    .line 452
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 453
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v10, v19

    .line 456
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v11, v19

    .line 457
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v12, v19

    .line 458
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-object/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v13, v19

    .line 460
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 461
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 462
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 464
    move-object/from16 v19, v7

    if-eqz v19, :cond_4

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_0
    move/from16 v14, v19

    .line 466
    move-object/from16 v19, v11

    if-eqz v19, :cond_5

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_1
    move/from16 v15, v19

    .line 468
    move-object/from16 v19, v13

    if-eqz v19, :cond_6

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v19, 0x1

    :goto_2
    move/from16 v16, v19

    .line 472
    move/from16 v19, v16

    if-nez v19, :cond_0

    .line 473
    move-object/from16 v19, v12

    if-eqz v19, :cond_0

    .line 474
    move-object/from16 v19, v12

    sget v20, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 475
    move-object/from16 v19, v17

    if-eqz v19, :cond_0

    .line 476
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :cond_0
    move/from16 v19, v15

    if-eqz v19, :cond_1

    .line 483
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 484
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 489
    :cond_1
    move/from16 v19, v14

    if-nez v19, :cond_2

    .line 490
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    :goto_3
    move-object/from16 v17, v19

    .line 491
    move-object/from16 v19, v17

    if-eqz v19, :cond_2

    .line 492
    move/from16 v19, v15

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_4
    move/from16 v20, v16

    if-eqz v20, :cond_9

    const/16 v20, 0x2

    :goto_5
    or-int v19, v19, v20

    move/from16 v18, v19

    .line 494
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v17

    move/from16 v22, v18

    const/16 v23, 0x3

    invoke-direct/range {v19 .. v23}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 499
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 500
    move-object/from16 v19, v17

    if-eqz v19, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 501
    move-object/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 502
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    move/from16 v18, v19

    .line 503
    move/from16 v19, v18

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 504
    move-object/from16 v19, v17

    move/from16 v20, v18

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 505
    move-object/from16 v19, v17

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 508
    :cond_3
    return-void

    .line 464
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 466
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 468
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 490
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 492
    :cond_8
    const/16 v19, 0x0

    goto :goto_4

    :cond_9
    const/16 v20, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 390
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 386
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 388
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 8

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 373
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 374
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v0, v3

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object v0, v1

    return-object v0
.end method

.method public installContent()V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    move-result v2

    .line 212
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v2

    move v1, v2

    .line 213
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 214
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AlertController;->setupView()V

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 396
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 401
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 302
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v3

    if-eqz v5, :cond_0

    .line 303
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v4, v5

    .line 306
    :cond_0
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 324
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Button does not exist"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :pswitch_0
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 310
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 326
    :goto_0
    return-void

    .line 314
    :pswitch_1
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 315
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 316
    goto :goto_0

    .line 319
    :pswitch_2
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 320
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 321
    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 285
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 239
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 336
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 338
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 339
    move v2, v1

    if-eqz v2, :cond_1

    .line 340
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 354
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 356
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 357
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 358
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 243
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 244
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 229
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 253
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 254
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 255
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 262
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 263
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 264
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 272
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 273
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 274
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 275
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 276
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 277
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    .line 278
    return-void
.end method
