.class Landroid/support/v7/app/AppCompatDelegateImplV7;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;

.field private mWindowDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 9

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 100
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 122
    move-object v4, v0

    new-instance v5, Landroid/support/v7/app/AppCompatDelegateImplV7$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 145
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/AppCompatDelegateImplV7;)I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/support/v7/app/AppCompatDelegateImplV7;Z)Z
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->updateStatusGuard(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->dismissPopups()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/app/AppCompatDelegateImplV7;ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 8

    .prologue
    .line 481
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ContentFrameLayout;

    move-object v1, v3

    .line 487
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 491
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 492
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowMinWidthMajor:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 493
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowMinWidthMinor:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 495
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 498
    :cond_0
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 501
    :cond_1
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 504
    :cond_2
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    move-object v3, v2

    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    .line 507
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 510
    return-void
.end method

.method private callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 7

    .prologue
    .line 1442
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    if-nez v4, :cond_1

    .line 1444
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1445
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1446
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v5, v1

    aget-object v4, v4, v5

    move-object v2, v4

    .line 1450
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1452
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v4

    .line 1457
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_2

    .line 1466
    :goto_0
    return-void

    .line 1460
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1464
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1466
    :cond_3
    goto :goto_0
.end method

.method private checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    .line 1327
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    if-eqz v3, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1331
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    .line 1332
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v3}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1333
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    move-object v2, v3

    .line 1334
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1335
    move-object v3, v2

    const/16 v4, 0x6c

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1337
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    .line 1338
    goto :goto_0
.end method

.method private closePanel(I)V
    .locals 6

    .prologue
    .line 1341
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1342
    return-void
.end method

.method private closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 8

    .prologue
    .line 1345
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1347
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1374
    :goto_0
    return-void

    .line 1351
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object v3, v4

    .line 1352
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1353
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1355
    move v4, v2

    if-eqz v4, :cond_1

    .line 1356
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1360
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1361
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1362
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    .line 1365
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1369
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1371
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 1372
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1374
    :cond_2
    goto :goto_0
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 13

    .prologue
    .line 306
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v1, v7

    .line 308
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 309
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    :cond_0
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->Theme_windowNoTitle:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 315
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    move-result v7

    .line 320
    :cond_1
    :goto_0
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBarOverlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    move-object v7, v0

    const/16 v8, 0x6d

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    move-result v7

    .line 323
    :cond_2
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionModeOverlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 324
    move-object v7, v0

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    move-result v7

    .line 326
    :cond_3
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowIsFloating:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mIsFloating:Z

    .line 327
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object v2, v7

    .line 330
    const/4 v7, 0x0

    move-object v3, v7

    .line 333
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowNoTitle:Z

    if-nez v7, :cond_b

    .line 334
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mIsFloating:Z

    if-eqz v7, :cond_6

    .line 336
    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 340
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput-boolean v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    iput-boolean v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    .line 421
    :cond_4
    :goto_1
    move-object v7, v3

    if-nez v7, :cond_e

    .line 422
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 316
    :cond_5
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    move-object v7, v0

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    move-result v7

    goto/16 :goto_0

    .line 341
    :cond_6
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v7, :cond_4

    .line 347
    new-instance v7, Landroid/util/TypedValue;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    move-object v4, v7

    .line 348
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 351
    move-object v7, v4

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    .line 352
    new-instance v7, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    move-object v10, v4

    iget v10, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v9, v10}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v5, v7

    .line 358
    :goto_2
    move-object v7, v5

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 361
    move-object v7, v0

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/DecorContentParent;

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 363
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 368
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    if-eqz v7, :cond_7

    .line 369
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/16 v8, 0x6d

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 371
    :cond_7
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFeatureProgress:Z

    if-eqz v7, :cond_8

    .line 372
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 374
    :cond_8
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_9

    .line 375
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 377
    :cond_9
    goto/16 :goto_1

    .line 354
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    move-object v5, v7

    goto :goto_2

    .line 379
    :cond_b
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    if-eqz v7, :cond_c

    .line 380
    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 386
    :goto_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_d

    .line 389
    move-object v7, v3

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV7$2;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 383
    :cond_c
    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    goto :goto_3

    .line 411
    :cond_d
    move-object v7, v3

    check-cast v7, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV7$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-interface {v7, v8}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1

    .line 432
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v7, :cond_f

    .line 433
    move-object v7, v0

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    .line 437
    :cond_f
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 439
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v4, v7

    .line 440
    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ContentFrameLayout;

    move-object v5, v7

    .line 445
    :goto_4
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_10

    .line 446
    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 447
    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 448
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    .line 449
    goto :goto_4

    .line 452
    :cond_10
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 456
    move-object v7, v4

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 457
    move-object v7, v5

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 461
    move-object v7, v4

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_11

    .line 462
    move-object v7, v4

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_11
    move-object v7, v5

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV7$4;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 475
    move-object v7, v3

    move-object v0, v7

    return-object v0
.end method

.method private dismissPopups()V
    .locals 5

    .prologue
    .line 1660
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_0

    .line 1661
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1664
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 1665
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1666
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1668
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :cond_1
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1676
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    .line 1678
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    move-object v1, v2

    .line 1679
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 1680
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1682
    :cond_3
    return-void

    .line 1669
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 8

    .prologue
    .line 1532
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v4

    move-object v2, v4

    .line 1533
    const/4 v4, 0x0

    move-object v3, v4

    .line 1534
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 1535
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1536
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1537
    move-object v4, v3

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1538
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1541
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1542
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1544
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    .line 1545
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1548
    move v4, v1

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_2

    move v4, v1

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_3

    .line 1550
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v4

    move-object v2, v4

    .line 1551
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 1552
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1553
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    .line 1556
    :cond_3
    return-void
.end method

.method private endOnGoingFadeAnimation()V
    .locals 2

    .prologue
    .line 798
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 799
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 801
    :cond_0
    return-void
.end method

.method private ensureSubDecor()V
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-nez v3, :cond_2

    .line 279
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    .line 282
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    .line 283
    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->applyFixedSizeWindow()V

    .line 289
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 291
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    .line 298
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    move-object v2, v3

    .line 299
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_2

    .line 300
    :cond_1
    move-object v3, v0

    const/16 v4, 0x6c

    invoke-direct {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->invalidatePanelMenu(I)V

    .line 303
    :cond_2
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 8

    .prologue
    .line 1469
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v2, v6

    .line 1470
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    array-length v6, v6

    :goto_0
    move v3, v6

    .line 1471
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 1472
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 1473
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 1474
    move-object v6, v5

    move-object v0, v6

    .line 1477
    :goto_2
    return-object v0

    .line 1470
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1471
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1477
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2
.end method

.method private getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 11

    .prologue
    .line 1482
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    if-eqz v5, :cond_0

    move-object v5, v3

    array-length v5, v5

    move v6, v1

    if-gt v5, v6, :cond_2

    .line 1483
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v4, v5

    .line 1484
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1485
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v3

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1487
    :cond_1
    move-object v5, v0

    move-object v6, v4

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    iput-object v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1490
    :cond_2
    move-object v5, v3

    move v6, v1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 1491
    move-object v5, v4

    if-nez v5, :cond_3

    .line 1492
    move-object v5, v3

    move v6, v1

    new-instance v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v1

    invoke-direct {v8, v9}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v4, v8

    aput-object v7, v5, v6

    .line 1494
    :cond_3
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 9

    .prologue
    .line 1202
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1203
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1204
    const/4 v3, 0x1

    move v0, v3

    .line 1219
    :goto_0
    return v0

    .line 1207
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_1

    .line 1208
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1211
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    if-nez v3, :cond_2

    .line 1212
    move-object v3, v0

    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    .line 1215
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v3

    move-object v2, v3

    .line 1217
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1219
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 8

    .prologue
    .line 1108
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1109
    move-object v2, v1

    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1110
    move-object v2, v1

    const/16 v3, 0x51

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->gravity:I

    .line 1111
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 11

    .prologue
    .line 1159
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    move-object v2, v6

    .line 1162
    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1164
    new-instance v6, Landroid/util/TypedValue;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v6

    .line 1165
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v4, v6

    .line 1166
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 1168
    const/4 v6, 0x0

    move-object v5, v6

    .line 1169
    move-object v6, v3

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1170
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v5, v6

    .line 1171
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1172
    move-object v6, v5

    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1173
    move-object v6, v5

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 1180
    :goto_0
    move-object v6, v3

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1181
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1182
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v5, v6

    .line 1183
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1185
    :cond_1
    move-object v6, v5

    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1188
    :cond_2
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 1189
    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v2, v6

    .line 1190
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1194
    :cond_3
    new-instance v6, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 1195
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1196
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1198
    const/4 v6, 0x1

    move v0, v6

    return v0

    .line 1176
    :cond_4
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 7

    .prologue
    .line 1523
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    .line 1525
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1526
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1527
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    .line 1529
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1377
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1378
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v4

    move-object v3, v4

    .line 1379
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    .line 1380
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    .line 1384
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1388
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v6, :cond_0

    .line 1389
    const/4 v6, 0x0

    move v0, v6

    .line 1437
    :goto_0
    return v0

    .line 1392
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 1393
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v6

    move-object v4, v6

    .line 1394
    move v6, v1

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1397
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1398
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1399
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v6

    move v3, v6

    .line 1428
    :cond_1
    :goto_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 1429
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    move-object v5, v6

    .line 1431
    move-object v6, v5

    if-eqz v6, :cond_8

    .line 1432
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1437
    :cond_2
    :goto_2
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 1402
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1405
    :cond_4
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v6, :cond_5

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    if-eqz v6, :cond_6

    .line 1408
    :cond_5
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    move v3, v6

    .line 1410
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_1

    .line 1411
    :cond_6
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_1

    .line 1412
    const/4 v6, 0x1

    move v5, v6

    .line 1413
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_7

    .line 1416
    move-object v6, v4

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1417
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    move v5, v6

    .line 1420
    :cond_7
    move v6, v5

    if-eqz v6, :cond_1

    .line 1422
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1423
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .line 1434
    :cond_8
    const-string v6, "AppCompatDelegate"

    const-string v7, "Couldn\'t get audio manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19

    .prologue
    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v9, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    move-object v9, v1

    iget v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-nez v9, :cond_4

    .line 1016
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    move-object v3, v9

    .line 1017
    move-object v9, v3

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object v4, v9

    .line 1018
    move-object v9, v4

    iget v9, v9, Landroid/content/res/Configuration;->screenLayout:I

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v5, v9

    .line 1020
    move-object v9, v3

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 1023
    move v9, v5

    if-eqz v9, :cond_4

    move v9, v6

    if-eqz v9, :cond_4

    .line 1024
    goto :goto_0

    .line 1018
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1020
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1028
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    move-object v3, v9

    .line 1029
    move-object v9, v3

    if-eqz v9, :cond_5

    move-object v9, v3

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v9, v10, v11}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1031
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1032
    goto :goto_0

    .line 1035
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    move-object v4, v9

    .line 1036
    move-object v9, v4

    if-nez v9, :cond_6

    .line 1037
    goto :goto_0

    .line 1041
    :cond_6
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1042
    goto :goto_0

    .line 1045
    :cond_7
    const/4 v9, -0x2

    move v5, v9

    .line 1046
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_8

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    if-eqz v9, :cond_11

    .line 1047
    :cond_8
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v9, :cond_a

    .line 1049
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v9, :cond_b

    .line 1050
    :cond_9
    goto/16 :goto_0

    .line 1051
    :cond_a
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    if-eqz v9, :cond_b

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_b

    .line 1053
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1057
    :cond_b
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->hasPanelItems()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1058
    :cond_c
    goto/16 :goto_0

    .line 1061
    :cond_d
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 1062
    move-object v9, v6

    if-nez v9, :cond_e

    .line 1063
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v6, v9

    .line 1066
    :cond_e
    move-object v9, v1

    iget v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    move v7, v9

    .line 1067
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1069
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v8, v9

    .line 1070
    move-object v9, v8

    if-eqz v9, :cond_f

    move-object v9, v8

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    .line 1071
    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1073
    :cond_f
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_10

    .line 1080
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    move-result v9

    .line 1091
    :cond_10
    :goto_3
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1093
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move v11, v5

    const/4 v12, -0x2

    move-object v13, v1

    iget v13, v13, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->x:I

    move-object v14, v1

    iget v14, v14, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->y:I

    const/16 v15, 0x3ea

    const/high16 v16, 0x820000

    const/16 v17, -0x3

    invoke-direct/range {v10 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object v6, v9

    .line 1100
    move-object v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->gravity:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1101
    move-object v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1103
    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    .line 1105
    goto/16 :goto_0

    .line 1082
    :cond_11
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v9, :cond_10

    .line 1085
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 1086
    move-object v9, v6

    if-eqz v9, :cond_10

    move-object v9, v6

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_10

    .line 1087
    const/4 v9, -0x1

    move v5, v9

    goto :goto_3
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 10

    .prologue
    .line 1499
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1500
    const/4 v6, 0x0

    move v0, v6

    .line 1519
    :goto_0
    return v0

    .line 1503
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .line 1507
    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_2

    .line 1509
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v5, v6

    .line 1512
    :cond_2
    move v6, v5

    if-eqz v6, :cond_3

    .line 1514
    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v6, :cond_3

    .line 1515
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1519
    :cond_3
    move v6, v5

    move v0, v6

    goto :goto_0
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    .line 1223
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1224
    const/4 v6, 0x0

    move v0, v6

    .line 1323
    :goto_0
    return v0

    .line 1228
    :cond_0
    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_1

    .line 1229
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1232
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v7, v1

    if-eq v6, v7, :cond_2

    .line 1234
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1237
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v6

    move-object v3, v6

    .line 1239
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 1240
    move-object v6, v1

    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-interface {v7, v8}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1243
    :cond_3
    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_4

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_9

    :cond_4
    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 1246
    move v6, v4

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_5

    .line 1249
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1252
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v6, :cond_13

    move v6, v4

    if-eqz v6, :cond_6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v6, :cond_13

    .line 1256
    :cond_6
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_7

    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_f

    .line 1257
    :cond_7
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v6, :cond_a

    .line 1258
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v6, :cond_a

    .line 1259
    :cond_8
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1243
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 1263
    :cond_a
    move v6, v4

    if-eqz v6, :cond_c

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_c

    .line 1264
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    if-nez v6, :cond_b

    .line 1265
    move-object v6, v0

    new-instance v7, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    .line 1267
    :cond_b
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1272
    :cond_c
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1273
    move-object v6, v3

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v6, v7, v8}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1275
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1277
    move v6, v4

    if-eqz v6, :cond_d

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_d

    .line 1279
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1282
    :cond_d
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1285
    :cond_e
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    .line 1290
    :cond_f
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1294
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v6, :cond_10

    .line 1295
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1296
    move-object v6, v1

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1300
    :cond_10
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v6, v7, v8, v9}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1301
    move v6, v4

    if-eqz v6, :cond_11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_11

    .line 1304
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1306
    :cond_11
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1307
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1311
    :cond_12
    move-object v6, v2

    if-eqz v6, :cond_14

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    :goto_2
    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    move-object v5, v6

    .line 1313
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->qwertyMode:Z

    .line 1314
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v1

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1315
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1319
    :cond_13
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1320
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1321
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1323
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1311
    :cond_14
    const/4 v6, -0x1

    goto :goto_2

    .line 1313
    :cond_15
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 9

    .prologue
    .line 1115
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1119
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    move-object v3, v5

    .line 1121
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    if-nez v5, :cond_4

    .line 1122
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1124
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1126
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1127
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1130
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1134
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v5, :cond_3

    move-object v5, v4

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-nez v5, :cond_3

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7, v8}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1136
    move-object v5, v3

    const/16 v6, 0x6c

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    .line 1137
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v5

    .line 1156
    :cond_3
    :goto_0
    return-void

    .line 1141
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v5

    .line 1142
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1143
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1144
    move-object v5, v3

    const/16 v6, 0x6c

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1150
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v5

    move-object v3, v5

    .line 1152
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1153
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1155
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1156
    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 4

    .prologue
    .line 1642
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1643
    const-string v2, "AppCompatDelegate"

    const-string v3, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1645
    const/16 v2, 0x6c

    move v0, v2

    .line 1652
    :goto_0
    return v0

    .line 1646
    :cond_0
    move v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 1647
    const-string v2, "AppCompatDelegate"

    const-string v3, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1649
    const/16 v2, 0x6d

    move v0, v2

    goto :goto_0

    .line 1652
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 4

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_1

    .line 947
    const/4 v2, 0x0

    move v0, v2

    .line 962
    :goto_0
    return v0

    .line 964
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 950
    :cond_1
    move-object v2, v1

    if-nez v2, :cond_2

    .line 955
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 956
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_3

    move-object v2, v1

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 5

    .prologue
    .line 1635
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 1636
    new-instance v1, Landroid/util/AndroidRuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Window feature must be requested before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1639
    :cond_0
    return-void
.end method

.method private updateStatusGuard(I)I
    .locals 17

    .prologue
    .line 1565
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v9, 0x0

    move v2, v9

    .line 1567
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v9, :cond_3

    .line 1568
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_3

    .line 1569
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v3, v9

    .line 1571
    const/4 v9, 0x0

    move v4, v9

    .line 1573
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1574
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    .line 1575
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    .line 1576
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTempRect2:Landroid/graphics/Rect;

    .line 1578
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    move-object v5, v9

    .line 1579
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v9

    .line 1580
    move-object v9, v5

    const/4 v10, 0x0

    move v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1582
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    move-object v10, v5

    move-object v11, v6

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1583
    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-nez v9, :cond_5

    move v9, v1

    :goto_0
    move v7, v9

    .line 1584
    move-object v9, v3

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v10, v7

    if-eq v9, v10, :cond_1

    .line 1585
    const/4 v9, 0x1

    move v4, v9

    .line 1586
    move-object v9, v3

    move v10, v1

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1588
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-nez v9, :cond_6

    .line 1589
    move-object v9, v0

    new-instance v10, Landroid/view/View;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    .line 1590
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1592
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    const/4 v11, -0x1

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, -0x1

    move v15, v1

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    :cond_1
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    move v2, v9

    .line 1612
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    if-nez v9, :cond_2

    move v9, v2

    if-eqz v9, :cond_2

    .line 1613
    const/4 v9, 0x0

    move v1, v9

    .line 1622
    :cond_2
    :goto_3
    move v9, v4

    if-eqz v9, :cond_3

    .line 1623
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 1628
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    move v10, v2

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1631
    :cond_4
    move v9, v1

    move v0, v9

    return v0

    .line 1583
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1596
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 1597
    move-object v9, v8

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v10, v1

    if-eq v9, v10, :cond_1

    .line 1598
    move-object v9, v8

    move v10, v1

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1599
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1606
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1617
    :cond_8
    move-object v9, v3

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v9, :cond_2

    .line 1618
    const/4 v9, 0x1

    move v4, v9

    .line 1619
    move-object v9, v3

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1628
    :cond_9
    const/16 v10, 0x8

    goto :goto_4
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 272
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 273
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 275
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 997
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v6, v6, Landroid/view/LayoutInflater$Factory;

    if-eqz v6, :cond_0

    .line 998
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v6, Landroid/view/LayoutInflater$Factory;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v6, v7, v8, v9}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1000
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 1001
    move-object v6, v5

    move-object v0, v6

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 930
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v7, :cond_0

    .line 931
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/AppCompatViewInflater;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 935
    :cond_0
    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v1

    check-cast v8, Landroid/view/ViewParent;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 938
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v6

    move v13, v5

    const/4 v14, 0x1

    invoke-virtual/range {v7 .. v14}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    return-object v0

    .line 928
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 935
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 859
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_0

    .line 861
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 862
    const/4 v5, 0x1

    move v0, v5

    .line 870
    :goto_0
    return v0

    .line 866
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move v2, v5

    .line 867
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    move v3, v5

    .line 868
    move v5, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 870
    move v5, v4

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_2
    move v0, v5

    goto :goto_0

    .line 868
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 870
    :cond_2
    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1656
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 4

    .prologue
    .line 556
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->sanitizeWindowFeatureId(I)I

    move-result v2

    move v1, v2

    .line 557
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 571
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    .line 559
    :sswitch_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    move v0, v2

    goto :goto_0

    .line 561
    :sswitch_1
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    move v0, v2

    goto :goto_0

    .line 563
    :sswitch_2
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    move v0, v2

    goto :goto_0

    .line 565
    :sswitch_3
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFeatureProgress:Z

    move v0, v2

    goto :goto_0

    .line 567
    :sswitch_4
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFeatureIndeterminateProgress:Z

    move v0, v2

    goto :goto_0

    .line 569
    :sswitch_5
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowNoTitle:Z

    move v0, v2

    goto :goto_0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 174
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 179
    move-object v1, v0

    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Activity;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 184
    :cond_2
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_3

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 187
    :cond_3
    goto :goto_0

    .line 181
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 182
    move-object v1, v0

    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Dialog;

    invoke-direct {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 4

    .prologue
    .line 970
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 971
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 972
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 977
    :goto_0
    return-void

    .line 974
    :cond_0
    const-string v2, "AppCompatDelegate"

    const-string v3, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    .prologue
    .line 661
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 662
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->invalidatePanelMenu(I)V

    .line 665
    goto :goto_0
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    .line 805
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_0

    .line 806
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 807
    const/4 v2, 0x1

    move v0, v2

    .line 817
    :goto_0
    return v0

    .line 811
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 812
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 817
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-eqz v3, :cond_0

    .line 219
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 220
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 221
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowDecor:Landroid/view/ViewGroup;

    .line 151
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 154
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 155
    move-object v3, v2

    if-nez v3, :cond_1

    .line 156
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mEnableDefaultActionBarUp:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 987
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 988
    move-object v6, v5

    move-object v0, v6

    .line 992
    :goto_0
    return-object v0

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 901
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 917
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 920
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 922
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    :goto_1
    return v0

    .line 903
    :sswitch_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 907
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 911
    :sswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mLongPressBackDown:Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 901
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    .line 823
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    move-object v3, v6

    .line 824
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 825
    const/4 v6, 0x1

    move v0, v6

    .line 854
    :goto_0
    return v0

    .line 830
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v6, :cond_2

    .line 831
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v4, v6

    .line 833
    move v6, v4

    if-eqz v6, :cond_2

    .line 834
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v6, :cond_1

    .line 835
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 837
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 845
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v6, :cond_3

    .line 846
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v6

    move-object v5, v6

    .line 847
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    .line 848
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV7;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v4, v6

    .line 849
    move-object v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 850
    move v6, v4

    if-eqz v6, :cond_3

    .line 851
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 854
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 874
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 897
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 876
    :sswitch_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 877
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 879
    :sswitch_1
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mLongPressBackDown:Z

    move v3, v5

    .line 880
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mLongPressBackDown:Z

    .line 882
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 883
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    .line 884
    move v5, v3

    if-nez v5, :cond_1

    .line 888
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 890
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 892
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->onBackPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 893
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 874
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    move-object v3, v5

    .line 617
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 618
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 619
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 620
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v5

    move v0, v5

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 628
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 629
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 604
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_1

    .line 605
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 606
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 607
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 609
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 611
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_1

    .line 588
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 589
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 590
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    move v4, v1

    if-nez v4, :cond_0

    .line 595
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v4

    move-object v3, v4

    .line 596
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_0

    .line 597
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 168
    return-void
.end method

.method public onPostResume()V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 237
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 238
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 229
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_1

    .line 577
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 579
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 581
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 514
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->sanitizeWindowFeatureId(I)I

    move-result v2

    move v1, v2

    .line 516
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowNoTitle:Z

    if-eqz v2, :cond_0

    move v2, v1

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 517
    const/4 v2, 0x0

    move v0, v2

    .line 551
    :goto_0
    return v0

    .line 519
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 521
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    .line 524
    :cond_1
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 551
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 526
    :sswitch_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 527
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    .line 528
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 530
    :sswitch_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 531
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionBar:Z

    .line 532
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 534
    :sswitch_2
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 535
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOverlayActionMode:Z

    .line 536
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 538
    :sswitch_3
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 539
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFeatureProgress:Z

    .line 540
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 542
    :sswitch_4
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 543
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFeatureIndeterminateProgress:Z

    .line 544
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 546
    :sswitch_5
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 547
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindowNoTitle:Z

    .line 548
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 254
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 255
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 256
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 257
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 258
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 245
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 246
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 247
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 249
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 263
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 264
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 265
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 267
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 10

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 210
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v2, v4

    .line 197
    move-object v4, v2

    instance-of v4, v4, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v4, :cond_1

    .line 198
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mMenuInflater:Landroid/view/MenuInflater;

    .line 205
    new-instance v4, Landroid/support/v7/app/ToolbarActionBar;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    move-object v3, v4

    .line 207
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 208
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 209
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    move-result v4

    .line 210
    goto :goto_0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 9

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 634
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ActionMode callback can not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 637
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v4, :cond_1

    .line 638
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v4}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 641
    :cond_1
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object v2, v4

    .line 643
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 644
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 645
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 646
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v4, :cond_2

    .line 647
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v4, v5}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 651
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez v4, :cond_3

    .line 653
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 656
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    move-object v0, v4

    return-object v0
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 15

    .prologue
    .line 669
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    .line 670
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v8, :cond_0

    .line 671
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v8}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 674
    :cond_0
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object v2, v8

    .line 675
    const/4 v8, 0x0

    move-object v3, v8

    .line 676
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 678
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    move-object v9, v2

    invoke-interface {v8, v9}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v3, v8

    .line 684
    :cond_1
    :goto_0
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 685
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 791
    :cond_2
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v8, :cond_3

    .line 792
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v8, v9}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 794
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    move-object v0, v8

    return-object v0

    .line 679
    :catch_0
    move-exception v8

    move-object v4, v8

    goto :goto_0

    .line 687
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v8, :cond_5

    .line 688
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mIsFloating:Z

    if-eqz v8, :cond_7

    .line 690
    new-instance v8, Landroid/util/TypedValue;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    move-object v4, v8

    .line 691
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    move-object v5, v8

    .line 692
    move-object v8, v5

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 695
    move-object v8, v4

    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_6

    .line 696
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    move-object v7, v8

    .line 697
    move-object v8, v7

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 698
    move-object v8, v7

    move-object v9, v4

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 700
    new-instance v8, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v6, v8

    .line 701
    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 706
    :goto_2
    move-object v8, v0

    new-instance v9, Landroid/support/v7/widget/ActionBarContextView;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    invoke-direct {v10, v11}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 707
    move-object v8, v0

    new-instance v9, Landroid/widget/PopupWindow;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    const/4 v12, 0x0

    sget v13, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 709
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 711
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 712
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 714
    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 716
    move-object v8, v4

    iget v8, v8, Landroid/util/TypedValue;->data:I

    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v8

    move v7, v8

    .line 718
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 719
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 720
    move-object v8, v0

    new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV7$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 754
    :cond_5
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v8, :cond_2

    .line 755
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    .line 756
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 757
    new-instance v8, Landroid/support/v7/view/StandaloneActionMode;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v10}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v12, v2

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v13, :cond_8

    const/4 v13, 0x1

    :goto_4
    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    move-object v3, v8

    .line 759
    move-object v8, v1

    move-object v9, v3

    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 760
    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 761
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 762
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 763
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 764
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 765
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV7$6;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV7$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    .line 783
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_2

    .line 784
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v8

    goto/16 :goto_1

    .line 703
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mContext:Landroid/content/Context;

    move-object v6, v8

    goto/16 :goto_2

    .line 744
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v9, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ViewStubCompat;

    move-object v4, v8

    .line 746
    move-object v8, v4

    if-eqz v8, :cond_5

    .line 748
    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 749
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    .line 757
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 787
    :cond_9
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_1
.end method
