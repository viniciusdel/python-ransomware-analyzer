.class public Landroid/support/v7/app/WindowDecorActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/WindowDecorActionBar$TabImpl;,
        Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Landroid/support/v7/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mTintManager:Landroid/support/v7/widget/TintManager;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const-class v0, Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 77
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 100
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 122
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/WindowDecorActionBar$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 152
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/WindowDecorActionBar$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 160
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/WindowDecorActionBar$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 170
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 171
    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object v3, v5

    .line 172
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 173
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroid/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 174
    move v5, v2

    if-nez v5, :cond_0

    .line 175
    move-object v5, v0

    move-object v6, v4

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 177
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 100
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 122
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    move-object v2, v0

    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 152
    move-object v2, v0

    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 160
    move-object v2, v0

    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 180
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 181
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 100
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 122
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    move-object v2, v0

    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 152
    move-object v2, v0

    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 160
    move-object v2, v0

    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 189
    sget-boolean v2, Landroid/support/v7/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 190
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/WindowDecorActionBar;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ScrollingTabContainerView;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/app/WindowDecorActionBar;Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/app/WindowDecorActionBar;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/WindowDecorActionBar;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$700(ZZZ)Z
    .locals 6

    .prologue
    .line 73
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/DecorToolbar;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v0, v1

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 4

    .prologue
    .line 723
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 724
    const/4 v3, 0x1

    move v0, v3

    .line 728
    :goto_0
    return v0

    .line 725
    :cond_0
    move v3, v0

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_2

    .line 726
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 728
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 3

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    .line 421
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 423
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 424
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1

    .line 425
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 427
    :cond_1
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 428
    return-void
.end method

.method private configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 11

    .prologue
    .line 510
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    check-cast v7, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v3, v7

    .line 511
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v7

    move-object v4, v7

    .line 513
    move-object v7, v4

    if-nez v7, :cond_0

    .line 514
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Action Bar Tab must have a Callback"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 517
    :cond_0
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 518
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 520
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v7

    .line 521
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    :goto_0
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_1

    .line 522
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 521
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 6

    .prologue
    .line 286
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    .line 307
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v2, Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 292
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v2, :cond_1

    .line 293
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 294
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 306
    :goto_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    .line 307
    goto :goto_0

    .line 296
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 297
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 298
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_2

    .line 299
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 304
    :cond_2
    :goto_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 302
    :cond_3
    move-object v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
    .locals 7

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/DecorToolbar;

    if-eqz v2, :cond_0

    .line 237
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/DecorToolbar;

    move-object v0, v2

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_1

    .line 239
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 241
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t make a decor toolbar out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v4, "null"

    goto :goto_1
.end method

.method private hideForActionMode()V
    .locals 3

    .prologue
    .line 676
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v1, :cond_1

    .line 677
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 678
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 679
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 681
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 683
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 13

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v8, v7, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 195
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_0

    .line 196
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 198
    :cond_0
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v7/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    .line 199
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v8, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    .line 201
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v8, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    .line 204
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    if-nez v7, :cond_2

    .line 205
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " can only be used "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "with a compatible window decor layout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 209
    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v8}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 212
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v7}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v7

    move v2, v7

    .line 213
    move v7, v2

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 214
    move v7, v3

    if-eqz v7, :cond_3

    .line 215
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 218
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v7

    move-object v4, v7

    .line 219
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v3

    if-eqz v8, :cond_8

    :cond_4
    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 220
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v8

    invoke-direct {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 222
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v10, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 225
    move-object v7, v5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 226
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 228
    :cond_5
    move-object v7, v5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ActionBar_elevation:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v6, v7

    .line 229
    move v7, v6

    if-eqz v7, :cond_6

    .line 230
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/WindowDecorActionBar;->setElevation(F)V

    .line 232
    :cond_6
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    return-void

    .line 213
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 219
    :cond_8
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 263
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 264
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 265
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 270
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 271
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 272
    move v3, v2

    if-eqz v3, :cond_3

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 274
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 281
    :cond_0
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    move v4, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setCollapsible(Z)V

    .line 282
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    move v4, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 283
    return-void

    .line 267
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 268
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 270
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 278
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    .line 281
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 282
    :cond_5
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 3

    .prologue
    .line 651
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v1, :cond_1

    .line 652
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 653
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 654
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 656
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 658
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 6

    .prologue
    .line 734
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v3

    move v2, v3

    .line 737
    move v3, v2

    if-eqz v3, :cond_1

    .line 738
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v3, :cond_0

    .line 739
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 740
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->doShow(Z)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v3, :cond_0

    .line 744
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 745
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 337
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 5

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 529
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 7

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/app/WindowDecorActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V

    .line 534
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 8

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 549
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V

    .line 550
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/WindowDecorActionBar;->configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V

    .line 551
    move v4, v3

    if-eqz v4, :cond_0

    .line 552
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 554
    :cond_0
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 6

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 539
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 540
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/WindowDecorActionBar;->configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V

    .line 541
    move v3, v2

    if-eqz v3, :cond_0

    .line 542
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 544
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 10

    .prologue
    .line 839
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-eqz v5, :cond_0

    .line 840
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/app/WindowDecorActionBar;->showForActionMode()V

    .line 846
    :goto_0
    move v5, v1

    if-eqz v5, :cond_1

    .line 851
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    const/4 v6, 0x4

    const-wide/16 v7, 0x64

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v3, v5

    .line 853
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v6, 0x0

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v2, v5

    .line 861
    :goto_1
    new-instance v5, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    move-object v4, v5

    .line 862
    move-object v5, v4

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 863
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 865
    return-void

    .line 842
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    .line 856
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    const/4 v6, 0x0

    const-wide/16 v7, 0xc8

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v7/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v2, v5

    .line 858
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v6, 0x8

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v3, v5

    goto :goto_1
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 922
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->collapseActionView()V

    .line 924
    const/4 v1, 0x1

    move v0, v1

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    .line 311
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 312
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    .line 313
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 315
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 6

    .prologue
    .line 344
    move-object v0, p0

    move v1, p1

    move v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne v4, v5, :cond_0

    .line 353
    :goto_0
    return-void

    .line 347
    :cond_0
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroid/support/v7/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 349
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 350
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 351
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    move v5, v1

    invoke-interface {v4, v5}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 353
    :cond_1
    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 10

    .prologue
    .line 801
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v5, :cond_0

    .line 802
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 805
    :cond_0
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_4

    sget-boolean v5, Landroid/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    move v5, v1

    if-eqz v5, :cond_4

    .line 807
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 808
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 809
    new-instance v5, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    move-object v2, v5

    .line 810
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    move v3, v5

    .line 811
    move v5, v1

    if-eqz v5, :cond_2

    .line 812
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v4, v5

    .line 813
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 814
    move v5, v3

    move-object v6, v4

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v3, v5

    .line 816
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v4, v5

    .line 817
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 818
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 819
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 820
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 822
    :cond_3
    move-object v5, v2

    sget-object v6, Landroid/support/v7/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 823
    move-object v5, v2

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 824
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 825
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 826
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 812
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 10

    .prologue
    .line 751
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v5, :cond_0

    .line 752
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 754
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 756
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    sget-boolean v5, Landroid/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    move v5, v1

    if-eqz v5, :cond_5

    .line 759
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 760
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    move v2, v5

    .line 761
    move v5, v1

    if-eqz v5, :cond_2

    .line 762
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v3, v5

    .line 763
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 764
    move v5, v2

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move v2, v5

    .line 766
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 767
    new-instance v5, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    move-object v3, v5

    .line 768
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v4, v5

    .line 769
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 770
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 771
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 772
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 773
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 775
    :cond_3
    move-object v5, v3

    sget-object v6, Landroid/support/v7/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 776
    move-object v5, v3

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 784
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v5

    .line 785
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 786
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 795
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_4

    .line 796
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 798
    :cond_4
    return-void

    .line 788
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 789
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 790
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 791
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 793
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 762
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 4

    .prologue
    .line 639
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 640
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getElevation()F
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 635
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getHideOffset()I
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .prologue
    .line 1257
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1263
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    .line 1259
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1261
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    .line 1245
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1251
    const/4 v1, -0x1

    move v0, v1

    :goto_0
    return v0

    .line 1247
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 1249
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 630
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 4

    .prologue
    .line 1304
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBar$Tab;

    move-object v0, v2

    return-object v0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 1269
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 10

    .prologue
    .line 868
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 869
    new-instance v4, Landroid/util/TypedValue;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v4

    .line 870
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move-object v2, v4

    .line 871
    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 872
    move-object v4, v1

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    move v3, v4

    .line 874
    move v4, v3

    if-eqz v4, :cond_1

    .line 875
    move-object v4, v0

    new-instance v5, Landroid/view/ContextThemeWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v8, v3

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, v4, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 880
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    move-object v0, v4

    return-object v0

    .line 877
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v5, v4, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method getTintManager()Landroid/support/v7/widget/TintManager;
    .locals 3

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-nez v1, :cond_0

    .line 1344
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 1346
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 1319
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->hasIcon()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasLogo()Z
    .locals 2

    .prologue
    .line 1333
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->hasLogo()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 669
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v1, :cond_0

    .line 670
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 671
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 673
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 3

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v1, :cond_0

    .line 687
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 688
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 690
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 2

    .prologue
    .line 704
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    .line 833
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/WindowDecorActionBar;->getHeight()I

    move-result v2

    move v1, v2

    .line 835
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v2, :cond_1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/WindowDecorActionBar;->getHideOffset()I

    move-result v2

    move v3, v1

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 2

    .prologue
    .line 885
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 5

    .prologue
    .line 558
    move-object v0, p0

    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    move-object v0, v1

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 258
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 3

    .prologue
    .line 910
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v1, :cond_0

    .line 911
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 912
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 914
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 319
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/WindowDecorActionBar;->cleanupTabs()V

    .line 417
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 341
    return-void
.end method

.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 4

    .prologue
    .line 563
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 564
    return-void
.end method

.method public removeTabAt(I)V
    .locals 11

    .prologue
    .line 568
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-nez v6, :cond_0

    .line 589
    :goto_0
    return-void

    .line 573
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v6}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v6

    :goto_1
    move v2, v6

    .line 575
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 576
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v3, v6

    .line 577
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 578
    move-object v6, v3

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 581
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 582
    move v6, v1

    move v5, v6

    :goto_2
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 583
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 582
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 573
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 586
    :cond_3
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_4

    .line 587
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 589
    :cond_4
    goto :goto_0

    .line 587
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 6

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 594
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v4

    :goto_0
    iput v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 626
    :goto_1
    return-void

    .line 594
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 599
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v3}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 601
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 607
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v4, v1

    if-ne v3, v4, :cond_5

    .line 608
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v3, :cond_2

    .line 609
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/app/ActionBar$TabListener;->onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 610
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 623
    :cond_2
    :goto_3
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 624
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v3

    .line 626
    :cond_3
    goto :goto_1

    .line 604
    :cond_4
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_2

    .line 613
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v4, v1

    if-eqz v4, :cond_7

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v4

    :goto_4
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 614
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v3, :cond_6

    .line 615
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/app/ActionBar$TabListener;->onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 617
    :cond_6
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    iput-object v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    .line 618
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v3, :cond_2

    .line 619
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/app/ActionBar$TabListener;->onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_3

    .line 613
    :cond_7
    const/4 v4, -0x1

    goto :goto_4
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    return-void
.end method

.method public setCustomView(I)V
    .locals 7

    .prologue
    .line 357
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1230
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 5

    .prologue
    .line 1234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1236
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 4

    .prologue
    .line 1337
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v2, :cond_0

    .line 1338
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1340
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 5

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 445
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 447
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 448
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 9

    .prologue
    .line 451
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v4}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v4

    move v3, v4

    .line 452
    move v4, v2

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 453
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 455
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v5, v1

    move v6, v2

    and-int/2addr v5, v6

    move v6, v3

    move v7, v2

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 456
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 5

    .prologue
    .line 383
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    :goto_0
    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 369
    return-void

    .line 368
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 5

    .prologue
    .line 378
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 379
    return-void

    .line 378
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 364
    return-void

    .line 363
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 249
    return-void
.end method

.method public setHideOffset(I)V
    .locals 6

    .prologue
    .line 714
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 719
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 6

    .prologue
    .line 694
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 699
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 700
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 4

    .prologue
    .line 905
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 906
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 900
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 4

    .prologue
    .line 895
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 896
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 891
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 389
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 1310
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setIcon(I)V

    .line 1311
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1315
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .locals 9

    .prologue
    .line 1240
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v4, v1

    new-instance v5, Landroid/support/v7/app/NavItemSelectedListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/v7/app/NavItemSelectedListener;-><init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1241
    return-void
.end method

.method public setLogo(I)V
    .locals 4

    .prologue
    .line 1324
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setLogo(I)V

    .line 1325
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1329
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1330
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6

    .prologue
    .line 1274
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v3}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v3

    move v2, v3

    .line 1275
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 1282
    :goto_0
    move v3, v2

    move v4, v1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_0

    .line 1283
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 1284
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1287
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v4, v1

    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1288
    move v3, v1

    packed-switch v3, :pswitch_data_1

    .line 1298
    :cond_1
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1299
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1300
    return-void

    .line 1277
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v4

    iput v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1278
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 1279
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1290
    :pswitch_1
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1291
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1292
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1293
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1294
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 1298
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1299
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1275
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1288
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 6

    .prologue
    .line 402
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 410
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 413
    :goto_0
    return-void

    .line 407
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 408
    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 330
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v2, :cond_0

    .line 331
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 333
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    return-void
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 398
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 393
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v1, :cond_0

    .line 645
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 646
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 648
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 3

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v1, :cond_0

    .line 662
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 663
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 665
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 9

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v3, :cond_0

    .line 492
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 495
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 496
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 497
    new-instance v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroid/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object v2, v3

    .line 498
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 500
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 501
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 502
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 503
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    .line 504
    move-object v3, v2

    move-object v0, v3

    .line 506
    :goto_0
    return-object v0

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method
