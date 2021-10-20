.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 164
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const v4, 0x10100b3

    aput v4, v2, v3

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 333
    move v1, v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 334
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 338
    :goto_2
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 336
    :cond_2
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 181
    move-object v6, v0

    const/high16 v7, -0x67000000

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 183
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 191
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 213
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 214
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 215
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 352
    move-object v6, v0

    const/high16 v7, 0x40000

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 353
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v4, v6

    .line 354
    move-object v6, v0

    const/high16 v7, 0x42800000    # 64.0f

    move v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 355
    const/high16 v6, 0x43c80000    # 400.0f

    move v7, v4

    mul-float/2addr v6, v7

    move v5, v6

    .line 357
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 358
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 360
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 361
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 362
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 363
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 365
    move-object v6, v0

    move-object v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 366
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 367
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 368
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 371
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 373
    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 376
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 377
    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 378
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    sget-object v6, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 380
    move-object v6, v0

    sget-object v7, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 383
    :cond_0
    move-object v6, v0

    const/high16 v7, 0x41200000    # 10.0f

    move v8, v4

    mul-float/2addr v7, v8

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 385
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 386
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 1650
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1651
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1652
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1653
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1654
    move-object v4, v3

    move-object v0, v4

    .line 1657
    :goto_1
    return-object v0

    .line 1651
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1657
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 855
    move v0, p0

    move v1, v0

    const/4 v2, 0x3

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 856
    const-string v1, "LEFT"

    move-object v0, v1

    .line 861
    :goto_0
    return-object v0

    .line 858
    :cond_0
    move v1, v0

    const/4 v2, 0x5

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 859
    const-string v1, "RIGHT"

    move-object v0, v1

    goto :goto_0

    .line 861
    :cond_1
    move v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1136
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 1137
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1138
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1140
    :goto_1
    return v0

    .line 1138
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1140
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private hasPeekingDrawer()Z
    .locals 6

    .prologue
    .line 1576
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1577
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 1578
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 1579
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_0

    .line 1580
    const/4 v4, 0x1

    move v0, v4

    .line 1583
    :goto_1
    return v0

    .line 1577
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1583
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 2

    .prologue
    .line 1646
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1758
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 5

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1021
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 1025
    :goto_0
    return v0

    .line 1024
    :cond_1
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    .line 1025
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 978
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 980
    move v2, v1

    if-nez v2, :cond_0

    .line 981
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 983
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 984
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 993
    :goto_0
    return-object v0

    .line 987
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 989
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 990
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 993
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 997
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 998
    move v2, v1

    if-nez v2, :cond_0

    .line 999
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1001
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1002
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 1011
    :goto_0
    return-object v0

    .line 1005
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1007
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 1008
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0

    .line 1011
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 3

    .prologue
    .line 970
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 974
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 975
    goto :goto_0
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v3, v6

    .line 756
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 757
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 758
    move v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_2

    .line 762
    :cond_1
    move-object v6, v5

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 756
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 765
    :cond_2
    move-object v6, v5

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 769
    :cond_3
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1612
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v9

    const/high16 v10, 0x60000

    if-ne v9, v10, :cond_0

    .line 1643
    :goto_0
    return-void

    .line 1618
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1619
    const/4 v9, 0x0

    move v5, v9

    .line 1620
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 1621
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1622
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1623
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1624
    const/4 v9, 0x1

    move v5, v9

    .line 1625
    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1620
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1628
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 1632
    :cond_3
    move v9, v5

    if-nez v9, :cond_5

    .line 1633
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 1634
    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_5

    .line 1635
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 1636
    move-object v9, v8

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    .line 1637
    move-object v9, v8

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1634
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1642
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1643
    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 1730
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1733
    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1736
    :cond_0
    move-object v5, v1

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1747
    :goto_0
    sget-boolean v5, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v5, :cond_1

    .line 1748
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1750
    :cond_1
    return-void

    .line 1741
    :cond_2
    move-object v5, v1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 14

    .prologue
    .line 1662
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v6, :cond_1

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide v1, v6

    .line 1664
    move-wide v6, v1

    move-wide v8, v1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, v6

    .line 1666
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    move v4, v6

    .line 1667
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 1668
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1667
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1670
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 1671
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1673
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 801
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 802
    move v4, v3

    move v5, v2

    and-int/2addr v4, v5

    move v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1602
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closeDrawer(I)V
    .locals 8

    .prologue
    .line 1502
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1503
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1504
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No drawer view found with gravity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-static {v6}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1507
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1508
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1476
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1477
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a sliding drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1480
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 1481
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 1482
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1483
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1492
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1493
    return-void

    .line 1485
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1486
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0

    .line 1489
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 3

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1394
    return-void
.end method

.method closeDrawers(Z)V
    .locals 13

    .prologue
    .line 1397
    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 1398
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .line 1399
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 1400
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 1401
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v8

    .line 1403
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_1

    move-object v8, v6

    iget-boolean v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v8, :cond_1

    .line 1399
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1407
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1409
    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1410
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v5

    move v11, v7

    neg-int v11, v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 1417
    :goto_2
    move-object v8, v6

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1413
    :cond_2
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v11

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    goto :goto_2

    .line 1420
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1421
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1423
    move v8, v2

    if-eqz v8, :cond_4

    .line 1424
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1426
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 1121
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 1122
    const/4 v5, 0x0

    move v2, v5

    .line 1123
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 1124
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v4, v5

    .line 1125
    move v5, v2

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v2, v5

    .line 1123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1130
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 1131
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1133
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 714
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v4

    .line 715
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v4, :cond_1

    .line 716
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 717
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v4, :cond_0

    .line 718
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 721
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 726
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 727
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 728
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 729
    move-object v4, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 733
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 736
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 737
    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-nez v3, :cond_2

    .line 738
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 739
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 740
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 743
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 746
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    move-object v3, v0

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 750
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v3

    .line 752
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 6

    .prologue
    .line 772
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v3, :cond_0

    .line 773
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 775
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 24

    .prologue
    .line 1204
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    move/from16 v7, v18

    .line 1205
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    move/from16 v8, v18

    .line 1206
    const/16 v18, 0x0

    move/from16 v9, v18

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v18

    move/from16 v10, v18

    .line 1208
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v18

    move/from16 v11, v18

    .line 1209
    move/from16 v18, v8

    if-eqz v18, :cond_5

    .line 1210
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v18

    move/from16 v12, v18

    .line 1211
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_0
    move/from16 v18, v13

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1212
    move-object/from16 v18, v2

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v14, v18

    .line 1213
    move-object/from16 v18, v14

    move-object/from16 v19, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v18, v14

    invoke-static/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1211
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1219
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v14

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1220
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v15, v18

    .line 1221
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    move/from16 v18, v15

    move/from16 v9, v18

    .line 1222
    :cond_2
    goto :goto_1

    .line 1223
    :cond_3
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v15, v18

    .line 1224
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move/from16 v18, v15

    move/from16 v10, v18

    goto :goto_1

    .line 1227
    :cond_4
    move-object/from16 v18, v3

    move/from16 v19, v9

    const/16 v20, 0x0

    move/from16 v21, v10

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v18

    .line 1229
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    invoke-super/range {v18 .. v22}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v18

    move/from16 v12, v18

    .line 1230
    move-object/from16 v18, v3

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1232
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    move/from16 v18, v8

    if-eqz v18, :cond_7

    .line 1233
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v18, v0

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 1234
    move/from16 v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 1235
    move/from16 v18, v14

    const/16 v19, 0x18

    shl-int/lit8 v18, v18, 0x18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    move/from16 v19, v0

    const v20, 0xffffff

    and-int v19, v19, v20

    or-int v18, v18, v19

    move/from16 v15, v18

    .line 1236
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1238
    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1263
    :cond_6
    :goto_2
    move/from16 v18, v12

    move/from16 v2, v18

    return v2

    .line 1239
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1241
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v13, v18

    .line 1242
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v14, v18

    .line 1243
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v18

    move/from16 v15, v18

    .line 1244
    const/16 v18, 0x0

    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v16, v18

    .line 1246
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v21, v14

    move/from16 v22, v13

    add-int v21, v21, v22

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1248
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    move/from16 v20, v16

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1249
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1250
    goto/16 :goto_2

    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    const/16 v20, 0x5

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1252
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v13, v18

    .line 1253
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v14, v18

    .line 1254
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v18

    move/from16 v19, v14

    sub-int v18, v18, v19

    move/from16 v15, v18

    .line 1255
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v18

    move/from16 v16, v18

    .line 1256
    const/16 v18, 0x0

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v17, v18

    .line 1258
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move/from16 v19, v14

    move/from16 v20, v13

    sub-int v19, v19, v20

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v21, v14

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1260
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    move/from16 v20, v17

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1261
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 9

    .prologue
    .line 835
    move-object v0, p0

    move v1, p1

    move v7, v1

    move-object v8, v0

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v2, v7

    .line 837
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 838
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 839
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 840
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v7

    move v6, v7

    .line 841
    move v7, v6

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 842
    move-object v7, v5

    move-object v0, v7

    .line 845
    :goto_1
    return-object v0

    .line 838
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 845
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 806
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v1, v4

    .line 807
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 808
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 809
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    if-eqz v4, :cond_0

    .line 810
    move-object v4, v3

    move-object v0, v4

    .line 813
    :goto_1
    return-object v0

    .line 807
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 813
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1588
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1607
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1593
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 2

    .prologue
    .line 412
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_0

    .line 413
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move v0, v1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 5

    .prologue
    .line 610
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v2, v3

    .line 612
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 613
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v3

    .line 617
    :goto_0
    return v0

    .line 614
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 615
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    move v0, v3

    goto :goto_0

    .line 617
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 630
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 631
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    move v0, v3

    .line 635
    :goto_0
    return v0

    .line 632
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 633
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    move v0, v3

    goto :goto_0

    .line 635
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 668
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v2, v3

    .line 670
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 671
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    move-object v0, v3

    .line 675
    :goto_0
    return-object v0

    .line 672
    :cond_0
    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 673
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 675
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v3

    .line 797
    move v3, v2

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 788
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move v0, v2

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1267
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 5

    .prologue
    .line 1537
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1538
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1539
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1541
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 1521
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1522
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1524
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-boolean v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    move v0, v2

    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1271
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v2, v4

    .line 1272
    move v4, v2

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 1274
    move v4, v3

    const/4 v5, 0x7

    and-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 5

    .prologue
    .line 1568
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1569
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1570
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    move v0, v3

    .line 1572
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 7

    .prologue
    .line 1553
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1554
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a drawer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1556
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 12

    .prologue
    .line 817
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v8

    move v3, v8

    .line 818
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v4, v8

    .line 819
    move v8, v4

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 820
    move v8, v4

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 821
    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    move v7, v8

    .line 823
    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    :goto_0
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 825
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 826
    return-void

    .line 823
    :cond_0
    move v9, v7

    neg-int v9, v9

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 873
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 874
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 866
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 867
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 868
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1193
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1194
    sget-object v3, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v3, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 1195
    move v3, v2

    if-lez v3, :cond_0

    .line 1196
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1197
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 1279
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    move v2, v8

    .line 1282
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v3, v8

    .line 1285
    const/4 v8, 0x0

    move v4, v8

    .line 1287
    move v8, v2

    packed-switch v8, :pswitch_data_0

    .line 1321
    :cond_0
    :goto_0
    move v8, v3

    if-nez v8, :cond_1

    move v8, v4

    if-nez v8, :cond_1

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_3

    :cond_1
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    return v0

    .line 1289
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v5, v8

    .line 1290
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v6, v8

    .line 1291
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1292
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1293
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 1294
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 1295
    move-object v8, v7

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1296
    const/4 v8, 0x1

    move v4, v8

    .line 1299
    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1300
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1301
    goto :goto_0

    .line 1306
    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1307
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1308
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1315
    :pswitch_2
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1316
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1317
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1321
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 1677
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1678
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    .line 1679
    const/4 v3, 0x1

    move v0, v3

    .line 1681
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1686
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1687
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1688
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1689
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1691
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 1693
    :goto_1
    return v0

    .line 1691
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1693
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 27

    .prologue
    .line 1030
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v21, v2

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1031
    move/from16 v21, v6

    move/from16 v22, v4

    sub-int v21, v21, v22

    move/from16 v8, v21

    .line 1032
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v21

    move/from16 v9, v21

    .line 1033
    const/16 v21, 0x0

    move/from16 v10, v21

    :goto_0
    move/from16 v21, v10

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1034
    move-object/from16 v21, v2

    move/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1036
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1033
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v12, v21

    .line 1042
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1043
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1047
    :cond_2
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v13, v21

    .line 1048
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v14, v21

    .line 1052
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1053
    move/from16 v21, v13

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v15, v21

    .line 1054
    move/from16 v21, v13

    move/from16 v22, v15

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    .line 1060
    :goto_2
    move/from16 v21, v16

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_5

    const/16 v21, 0x1

    :goto_3
    move/from16 v17, v21

    .line 1062
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, 0x70

    and-int/lit8 v21, v21, 0x70

    move/from16 v18, v21

    .line 1064
    move/from16 v21, v18

    sparse-switch v21, :sswitch_data_0

    .line 1067
    move-object/from16 v21, v11

    move/from16 v22, v15

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move-object/from16 v25, v12

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1098
    :goto_4
    move/from16 v21, v17

    if-eqz v21, :cond_3

    .line 1099
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move/from16 v23, v16

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1102
    :cond_3
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    const/16 v21, 0x0

    :goto_5
    move/from16 v19, v21

    .line 1103
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    move/from16 v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1104
    move-object/from16 v21, v11

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1056
    :cond_4
    move/from16 v21, v8

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v15, v21

    .line 1057
    move/from16 v21, v8

    move/from16 v22, v15

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v16, v21

    goto/16 :goto_2

    .line 1060
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1073
    :sswitch_0
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1074
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v19

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v19

    move-object/from16 v26, v12

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1078
    goto/16 :goto_4

    .line 1082
    :sswitch_1
    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    move/from16 v19, v21

    .line 1083
    move/from16 v21, v19

    move/from16 v22, v14

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v20, v21

    .line 1087
    move/from16 v21, v20

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1088
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move/from16 v20, v21

    .line 1092
    :cond_6
    :goto_6
    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v20

    move/from16 v24, v15

    move/from16 v25, v13

    add-int v24, v24, v25

    move/from16 v25, v20

    move/from16 v26, v14

    add-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 1094
    goto/16 :goto_4

    .line 1089
    :cond_7
    move/from16 v21, v20

    move/from16 v22, v14

    add-int v21, v21, v22

    move/from16 v22, v19

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 1090
    move/from16 v21, v19

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v22, v14

    sub-int v21, v21, v22

    move/from16 v20, v21

    goto :goto_6

    .line 1102
    :cond_8
    const/16 v21, 0x4

    goto/16 :goto_5

    .line 1108
    :cond_9
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1109
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1110
    return-void

    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24

    .prologue
    .line 878
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v19, v3

    invoke-static/range {v19 .. v19}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    move/from16 v5, v19

    .line 879
    move/from16 v19, v4

    invoke-static/range {v19 .. v19}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    move/from16 v6, v19

    .line 880
    move/from16 v19, v3

    invoke-static/range {v19 .. v19}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    move/from16 v7, v19

    .line 881
    move/from16 v19, v4

    invoke-static/range {v19 .. v19}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    move/from16 v8, v19

    .line 883
    move/from16 v19, v5

    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v6

    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 884
    :cond_0
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 889
    move/from16 v19, v5

    const/high16 v20, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 890
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v5, v19

    .line 895
    :cond_1
    :goto_0
    move/from16 v19, v6

    const/high16 v20, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 896
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v6, v19

    .line 908
    :cond_2
    :goto_1
    move-object/from16 v19, v2

    move/from16 v20, v7

    move/from16 v21, v8

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 910
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v2

    invoke-static/range {v19 .. v19}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    :goto_2
    move/from16 v9, v19

    .line 911
    move-object/from16 v19, v2

    invoke-static/range {v19 .. v19}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v19

    move/from16 v10, v19

    .line 914
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 915
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v19

    move/from16 v12, v19

    .line 916
    const/16 v19, 0x0

    move/from16 v13, v19

    :goto_3
    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 917
    move-object/from16 v19, v2

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v14, v19

    .line 919
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 916
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 891
    :cond_3
    move/from16 v19, v5

    if-nez v19, :cond_1

    .line 892
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v5, v19

    .line 893
    const/16 v19, 0x12c

    move/from16 v7, v19

    goto :goto_0

    .line 898
    :cond_4
    move/from16 v19, v6

    if-nez v19, :cond_2

    .line 899
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v6, v19

    .line 900
    const/16 v19, 0x12c

    move/from16 v8, v19

    goto :goto_1

    .line 903
    :cond_5
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const-string v21, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 910
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 923
    :cond_7
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object/from16 v15, v19

    .line 925
    move/from16 v19, v9

    if-eqz v19, :cond_8

    .line 926
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v19, v0

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v19

    move/from16 v16, v19

    .line 927
    move-object/from16 v19, v14

    invoke-static/range {v19 .. v19}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 928
    sget-object v19, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    move/from16 v22, v16

    invoke-interface/range {v19 .. v22}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 934
    :cond_8
    :goto_5
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 936
    move/from16 v19, v7

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v16, v19

    .line 938
    move/from16 v19, v8

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v17, v19

    .line 940
    move-object/from16 v19, v14

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->measure(II)V

    .line 941
    goto/16 :goto_4

    .line 930
    :cond_9
    sget-object v19, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v20, v15

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v21, v0

    move/from16 v22, v16

    invoke-interface/range {v19 .. v22}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_5

    .line 941
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 942
    sget-boolean v19, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v19, :cond_b

    .line 943
    move-object/from16 v19, v14

    invoke-static/range {v19 .. v19}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_b

    .line 944
    move-object/from16 v19, v14

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 947
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v19

    const/16 v20, 0x7

    and-int/lit8 v19, v19, 0x7

    move/from16 v16, v19

    .line 949
    move/from16 v19, v11

    move/from16 v20, v16

    and-int v19, v19, v20

    if-eqz v19, :cond_c

    .line 950
    new-instance v19, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Child drawer has absolute gravity "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v16

    invoke-static/range {v22 .. v22}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " but this "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "DrawerLayout"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " already has a "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "drawer view along that edge"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 954
    :cond_c
    move/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v20, v0

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v17, v19

    .line 957
    move/from16 v19, v4

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v18, v19

    .line 960
    move-object/from16 v19, v14

    move/from16 v20, v17

    move/from16 v21, v18

    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->measure(II)V

    .line 961
    goto/16 :goto_4

    .line 962
    :cond_d
    new-instance v19, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Child "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " at index "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 967
    :cond_e
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1698
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v2, v4

    .line 1699
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1701
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v4, :cond_0

    .line 1702
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1703
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1704
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1708
    :cond_0
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1709
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1710
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    .line 1187
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1188
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1714
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    move-object v1, v4

    .line 1715
    new-instance v4, Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v4

    .line 1717
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1718
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1719
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1722
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1723
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1725
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    .prologue
    .line 1326
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1327
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1329
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    move v2, v12

    .line 1330
    const/4 v12, 0x1

    move v3, v12

    .line 1332
    move v12, v2

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    packed-switch v12, :pswitch_data_0

    .line 1373
    :goto_0
    :pswitch_0
    move v12, v3

    move v0, v12

    return v0

    .line 1334
    :pswitch_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1335
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1336
    move-object v12, v0

    move v13, v4

    iput v13, v12, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1337
    move-object v12, v0

    move v13, v5

    iput v13, v12, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1338
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1339
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1340
    goto :goto_0

    .line 1344
    :pswitch_2
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1345
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1346
    const/4 v12, 0x1

    move v6, v12

    .line 1347
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move v13, v4

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1348
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1349
    move v12, v4

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v12, v13

    move v8, v12

    .line 1350
    move v12, v5

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v12, v13

    move v9, v12

    .line 1351
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v12}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v12

    move v10, v12

    .line 1352
    move v12, v8

    move v13, v8

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v9

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v10

    move v14, v10

    mul-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 1354
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1355
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 1356
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 1360
    :cond_0
    move-object v12, v0

    move v13, v6

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1361
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1362
    goto/16 :goto_0

    .line 1356
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1366
    :pswitch_3
    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1367
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1368
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto/16 :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 8

    .prologue
    .line 1462
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1463
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1464
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No drawer view found with gravity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-static {v6}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1467
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1468
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1434
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1435
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a sliding drawer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1438
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 1439
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v2, v3

    .line 1440
    move-object v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1441
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    .line 1443
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1452
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1453
    return-void

    .line 1445
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1446
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0

    .line 1448
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 1381
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1383
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1384
    move v2, v1

    if-eqz v2, :cond_0

    .line 1385
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1387
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v1, :cond_0

    .line 1115
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1117
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 425
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 426
    move-object v3, v0

    move v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 427
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 428
    return-void

    .line 426
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 396
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 397
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 398
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 396
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 4

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 505
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 5

    .prologue
    .line 521
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 522
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 523
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 8

    .prologue
    .line 545
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v2

    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    move v3, v6

    .line 547
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 548
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 552
    :cond_0
    :goto_0
    move v6, v1

    if-eqz v6, :cond_1

    .line 554
    move v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    :goto_1
    move-object v4, v6

    .line 555
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 557
    :cond_1
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 572
    :cond_2
    :goto_2
    return-void

    .line 549
    :cond_3
    move v6, v3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 550
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 554
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    .line 559
    :pswitch_0
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 560
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 561
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 565
    :pswitch_1
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 566
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 567
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 9

    .prologue
    .line 593
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "drawer with appropriate layout_gravity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 597
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move v3, v4

    .line 598
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 599
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 484
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 485
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-boolean v3, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v3, :cond_0

    .line 467
    :goto_0
    return-void

    .line 454
    :cond_0
    move v3, v2

    const v4, 0x800003

    and-int/2addr v3, v4

    const v4, 0x800003

    if-ne v3, v4, :cond_1

    .line 455
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 465
    :goto_1
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 466
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 467
    goto :goto_0

    .line 456
    :cond_1
    move v3, v2

    const v4, 0x800005

    and-int/2addr v3, v4

    const v4, 0x800005

    if-ne v3, v4, :cond_2

    .line 457
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 458
    :cond_2
    move v3, v2

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 459
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 460
    :cond_3
    move v3, v2

    const/4 v4, 0x5

    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 461
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 463
    :cond_4
    goto :goto_0
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 649
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    move v3, v4

    .line 651
    move v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 652
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    move v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 654
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 778
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v3, v4

    .line 779
    move v4, v2

    move-object v5, v3

    iget v5, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_0
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 784
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 785
    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 493
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 494
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 495
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 5

    .prologue
    .line 1170
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1171
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1172
    return-void

    .line 1170
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1151
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1152
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1182
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, v2, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1183
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1184
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 10

    .prologue
    .line 683
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v8

    move v4, v8

    .line 684
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v8

    move v5, v8

    .line 687
    move v8, v4

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 688
    :cond_0
    const/4 v8, 0x1

    move v6, v8

    .line 695
    :goto_0
    move-object v8, v3

    if-eqz v8, :cond_1

    move v8, v2

    if-nez v8, :cond_1

    .line 696
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v7, v8

    .line 697
    move-object v8, v7

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    .line 698
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 704
    :cond_1
    :goto_1
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v8, v9, :cond_2

    .line 705
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 707
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v8, :cond_2

    .line 708
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    move v9, v6

    invoke-interface {v8, v9}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 711
    :cond_2
    return-void

    .line 689
    :cond_3
    move v8, v4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    move v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 690
    :cond_4
    const/4 v8, 0x2

    move v6, v8

    goto :goto_0

    .line 692
    :cond_5
    const/4 v8, 0x0

    move v6, v8

    goto :goto_0

    .line 699
    :cond_6
    move-object v8, v7

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 700
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1
.end method
