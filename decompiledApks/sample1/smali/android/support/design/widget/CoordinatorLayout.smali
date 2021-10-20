.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;,
        Landroid/support/design/widget/CoordinatorLayout$LayoutParams;,
        Landroid/support/design/widget/CoordinatorLayout$Behavior;,
        Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBehaviorTouchView:Landroid/view/View;

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field final mLayoutDependencyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 93
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    move-object v0, v1

    .line 94
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 102
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 103
    new-instance v1, Landroid/support/design/widget/CoordinatorLayoutInsetsHelperLollipop;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayoutInsetsHelperLollipop;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    .line 110
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 115
    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 106
    const/4 v1, 0x0

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/CoordinatorLayout$1;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mLayoutDependencyComparator:Ljava/util/Comparator;

    .line 138
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 139
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 140
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 141
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 142
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 143
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 144
    move-object v10, v0

    const/4 v11, 0x2

    new-array v11, v11, [I

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 164
    move-object v10, v0

    new-instance v11, Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 178
    move-object v10, v1

    invoke-static {v10}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 180
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroid/support/design/R$styleable;->CoordinatorLayout:[I

    move v13, v3

    sget v14, Landroid/support/design/R$style;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v4, v10

    .line 182
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->CoordinatorLayout_keylines:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    move v5, v10

    .line 183
    move v10, v5

    if-eqz v10, :cond_0

    .line 184
    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object v6, v10

    .line 185
    move-object v10, v0

    move-object v11, v6

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 186
    move-object v10, v6

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    move v7, v10

    .line 187
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v10, v10

    move v8, v10

    .line 188
    const/4 v10, 0x0

    move v9, v10

    :goto_0
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_0

    .line 189
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    move v11, v9

    move-object v15, v10

    move/from16 v16, v11

    move-object v10, v15

    move/from16 v11, v16

    move-object v12, v15

    move/from16 v13, v16

    aget v12, v12, v13

    int-to-float v12, v12

    move v13, v7

    mul-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v10, v11

    .line 188
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 192
    :cond_0
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 193
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    sget-object v10, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    if-eqz v10, :cond_1

    .line 196
    sget-object v10, Landroid/support/design/widget/CoordinatorLayout;->INSETS_HELPER:Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;

    move-object v11, v0

    new-instance v12, Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-interface {v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;->setupForWindowInsets(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 198
    :cond_1
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-super {v10, v11}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v0, v1

    return-object v0
.end method

.method private dispatchChildApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 11

    .prologue
    .line 698
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 724
    :goto_0
    return-void

    .line 702
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v3, v7

    :goto_1
    move v7, v2

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 703
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 704
    move-object v7, v4

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 705
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 706
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 708
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 710
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v7

    move-object v1, v7

    .line 711
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 724
    :cond_1
    :goto_2
    goto :goto_0

    .line 718
    :cond_2
    move-object v7, v4

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v7

    move-object v1, v7

    .line 719
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 720
    goto :goto_2

    .line 702
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getKeyline(I)I
    .locals 6

    .prologue
    .line 485
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v2, :cond_0

    .line 486
    const-string v2, "CoordinatorLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No keylines defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - attempted index lookup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 487
    const/4 v2, 0x0

    move v0, v2

    .line 495
    :goto_0
    return v0

    .line 490
    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 491
    :cond_1
    const-string v2, "CoordinatorLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyline index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 492
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 495
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 324
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    move v2, v7

    .line 325
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 326
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    if-ltz v7, :cond_1

    .line 327
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v7

    :goto_1
    move v5, v7

    .line 328
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 329
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 326
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 327
    :cond_0
    move v7, v4

    goto :goto_1

    .line 332
    :cond_1
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v7, :cond_2

    .line 333
    move-object v7, v1

    sget-object v8, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 335
    :cond_2
    return-void
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 13

    .prologue
    .line 1017
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v6

    .line 1018
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v4, v6

    .line 1019
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1024
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1028
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1029
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1030
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1031
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1034
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v6

    .line 1035
    move-object v6, v3

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move-object v9, v4

    move-object v10, v5

    move v11, v2

    invoke-static/range {v6 .. v11}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1037
    move-object v6, v1

    move-object v7, v5

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1038
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 12

    .prologue
    .line 932
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v7

    .line 934
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v5, v7

    .line 935
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v7

    .line 936
    move-object v7, v0

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 937
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 939
    move-object v7, v1

    move-object v8, v6

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v6

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 940
    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 21

    .prologue
    .line 954
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v15

    .line 955
    move-object v15, v5

    iget v15, v15, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v15}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v15

    move/from16 v16, v4

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v15

    move v6, v15

    .line 958
    move v15, v6

    const/16 v16, 0x7

    and-int/lit8 v15, v15, 0x7

    move v7, v15

    .line 959
    move v15, v6

    const/16 v16, 0x70

    and-int/lit8 v15, v15, 0x70

    move v8, v15

    .line 960
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v15

    move v9, v15

    .line 961
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v15

    move v10, v15

    .line 962
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move v11, v15

    .line 963
    move-object v15, v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move v12, v15

    .line 965
    move v15, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 966
    move v15, v9

    move/from16 v16, v3

    sub-int v15, v15, v16

    move v3, v15

    .line 969
    :cond_0
    move-object v15, v1

    move/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v15

    move/from16 v16, v11

    sub-int v15, v15, v16

    move v13, v15

    .line 970
    const/4 v15, 0x0

    move v14, v15

    .line 972
    move v15, v7

    sparse-switch v15, :sswitch_data_0

    .line 985
    :goto_0
    move v15, v8

    sparse-switch v15, :sswitch_data_1

    .line 999
    :goto_1
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v13

    move/from16 v17, v9

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v18, v11

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v13, v15

    .line 1002
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v15

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v14

    move/from16 v17, v10

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v18, v12

    sub-int v17, v17, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v14, v15

    .line 1006
    move-object v15, v2

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v12

    add-int v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/view/View;->layout(IIII)V

    .line 1007
    return-void

    .line 978
    :sswitch_0
    move v15, v13

    move/from16 v16, v11

    add-int v15, v15, v16

    move v13, v15

    .line 979
    goto/16 :goto_0

    .line 981
    :sswitch_1
    move v15, v13

    move/from16 v16, v11

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move v13, v15

    goto/16 :goto_0

    .line 991
    :sswitch_2
    move v15, v14

    move/from16 v16, v12

    add-int v15, v15, v16

    move v14, v15

    .line 992
    goto/16 :goto_1

    .line 994
    :sswitch_3
    move v15, v14

    move/from16 v16, v12

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    move v14, v15

    goto/16 :goto_1

    .line 972
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 985
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 13

    .prologue
    .line 499
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 500
    const/4 v7, 0x0

    move-object v0, v7

    .line 531
    :goto_0
    return-object v0

    .line 504
    :cond_0
    move-object v7, v2

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 518
    :goto_1
    :try_start_0
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    move-object v4, v7

    .line 519
    move-object v7, v4

    if-nez v7, :cond_1

    .line 520
    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v4, v7

    .line 521
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 523
    :cond_1
    move-object v7, v4

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    move-object v5, v7

    .line 524
    move-object v7, v5

    if-nez v7, :cond_2

    .line 525
    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 527
    move-object v7, v6

    sget-object v8, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v5, v7

    .line 528
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 529
    move-object v7, v4

    move-object v8, v3

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 531
    :cond_2
    move-object v7, v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto/16 :goto_0

    .line 507
    :cond_3
    move-object v7, v2

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    .line 509
    move-object v7, v2

    move-object v3, v7

    goto :goto_1

    .line 512
    :cond_4
    sget-object v7, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v3, v7

    goto/16 :goto_1

    :cond_5
    move-object v7, v2

    goto :goto_2

    .line 532
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 533
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not inflate Behavior subclass "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 25

    .prologue
    .line 338
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    const/16 v17, 0x0

    move/from16 v5, v17

    .line 339
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 341
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 343
    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v17

    move/from16 v8, v17

    .line 345
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 346
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 349
    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v10, v17

    .line 350
    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_0
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 351
    move-object/from16 v17, v9

    move/from16 v18, v11

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v12, v17

    .line 352
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v13, v17

    .line 353
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v17

    move-object/from16 v14, v17

    .line 355
    move/from16 v17, v5

    if-nez v17, :cond_0

    move/from16 v17, v6

    if-eqz v17, :cond_3

    :cond_0
    move/from16 v17, v8

    if-eqz v17, :cond_3

    .line 358
    move-object/from16 v17, v14

    if-eqz v17, :cond_2

    .line 359
    move-object/from16 v17, v7

    if-nez v17, :cond_1

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v15, v17

    .line 361
    move-wide/from16 v17, v15

    move-wide/from16 v19, v15

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v7, v17

    .line 364
    :cond_1
    move/from16 v17, v4

    packed-switch v17, :pswitch_data_0

    .line 350
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 366
    :pswitch_0
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    .line 367
    goto :goto_1

    .line 369
    :pswitch_1
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    .line 376
    :cond_3
    move/from16 v17, v5

    if-nez v17, :cond_4

    move-object/from16 v17, v14

    if-eqz v17, :cond_4

    .line 377
    move/from16 v17, v4

    packed-switch v17, :pswitch_data_1

    .line 385
    :goto_2
    move/from16 v17, v5

    if-eqz v17, :cond_4

    .line 386
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 392
    :cond_4
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v17

    move/from16 v15, v17

    .line 393
    move-object/from16 v17, v13

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v17

    move/from16 v16, v17

    .line 394
    move/from16 v17, v16

    if-eqz v17, :cond_6

    move/from16 v17, v15

    if-nez v17, :cond_6

    const/16 v17, 0x1

    :goto_3
    move/from16 v6, v17

    .line 395
    move/from16 v17, v16

    if-eqz v17, :cond_2

    move/from16 v17, v6

    if-nez v17, :cond_2

    .line 402
    :cond_5
    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 404
    move/from16 v17, v5

    move/from16 v2, v17

    return v2

    .line 379
    :pswitch_2
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    move/from16 v5, v17

    .line 380
    goto :goto_2

    .line 382
    :pswitch_3
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    invoke-virtual/range {v17 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v17

    move/from16 v5, v17

    goto :goto_2

    .line 394
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 377
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 8

    .prologue
    .line 560
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 561
    const/4 v5, 0x0

    move v1, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v2, v5

    :goto_0
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 562
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 564
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 565
    move-object v5, v4

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 567
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mLayoutDependencyComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->selectionSort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 572
    return-void
.end method

.method private resetTouchBehaviors()V
    .locals 13

    .prologue
    .line 297
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 298
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    move-object v1, v5

    .line 299
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 301
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 303
    move-object v5, v1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    .line 304
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 309
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 310
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_2

    .line 311
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 312
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v5

    .line 313
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_2
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 2

    .prologue
    .line 1061
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const/16 v1, 0x11

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static resolveGravity(I)I
    .locals 2

    .prologue
    .line 1045
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800033

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 2

    .prologue
    .line 1053
    move v0, p0

    move v1, v0

    if-nez v1, :cond_0

    const v1, 0x800035

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static selectionSort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2650
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 2680
    :cond_0
    :goto_0
    return-void

    .line 2654
    :cond_1
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/view/View;

    move-object v2, v7

    .line 2655
    move-object v7, v0

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 2656
    move-object v7, v2

    array-length v7, v7

    move v3, v7

    .line 2658
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_5

    .line 2659
    move v7, v4

    move v5, v7

    .line 2661
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    :goto_2
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 2662
    move-object v7, v1

    move-object v8, v2

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v2

    move v10, v5

    aget-object v9, v9, v10

    invoke-interface {v7, v8, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_2

    .line 2663
    move v7, v6

    move v5, v7

    .line 2661
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2667
    :cond_3
    move v7, v4

    move v8, v5

    if-eq v7, v8, :cond_4

    .line 2669
    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 2670
    move-object v7, v2

    move v8, v5

    move-object v9, v2

    move v10, v4

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 2671
    move-object v7, v2

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    .line 2658
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2676
    :cond_5
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2677
    const/4 v7, 0x0

    move v4, v7

    :goto_3
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_6

    .line 2678
    move-object v7, v0

    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 2677
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2680
    :cond_6
    goto :goto_0
.end method

.method private setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 282
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 283
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 284
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 285
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->dispatchChildApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 286
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 288
    :cond_0
    return-void

    .line 283
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 284
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 7

    .prologue
    .line 1280
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_1

    .line 1282
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v2, :cond_0

    .line 1283
    move-object v2, v0

    new-instance v3, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1285
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 1286
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1291
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1292
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

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

.method dispatchDependentViewRemoved(Landroid/view/View;)V
    .locals 12

    .prologue
    .line 1150
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v2, v8

    .line 1151
    const/4 v8, 0x0

    move v3, v8

    .line 1152
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_2

    .line 1153
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v5, v8

    .line 1154
    move-object v8, v5

    move-object v9, v1

    if-ne v8, v9, :cond_1

    .line 1156
    const/4 v8, 0x1

    move v3, v8

    .line 1152
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1159
    :cond_1
    move v8, v3

    if-eqz v8, :cond_0

    .line 1160
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v8

    .line 1162
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    move-object v7, v8

    .line 1163
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v6

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1164
    move-object v8, v7

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 1168
    :cond_2
    return-void
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 12

    .prologue
    .line 1181
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v2, v8

    .line 1182
    const/4 v8, 0x0

    move v3, v8

    .line 1183
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_2

    .line 1184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v5, v8

    .line 1185
    move-object v8, v5

    move-object v9, v1

    if-ne v8, v9, :cond_1

    .line 1187
    const/4 v8, 0x1

    move v3, v8

    .line 1183
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1190
    :cond_1
    move v8, v3

    if-eqz v8, :cond_0

    .line 1191
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v8

    .line 1193
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    move-object v7, v8

    .line 1194
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v6

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1195
    move-object v8, v7

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    goto :goto_1

    .line 1199
    :cond_2
    return-void
.end method

.method dispatchOnDependentViewChanged(Z)V
    .locals 18

    .prologue
    .line 1098
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v14, v0

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v14

    move v2, v14

    .line 1099
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v3, v14

    .line 1100
    const/4 v14, 0x0

    move v4, v14

    :goto_0
    move v14, v4

    move v15, v3

    if-ge v14, v15, :cond_6

    .line 1101
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v15, v4

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v5, v14

    .line 1102
    move-object v14, v5

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v14

    .line 1105
    const/4 v14, 0x0

    move v7, v14

    :goto_1
    move v14, v7

    move v15, v4

    if-ge v14, v15, :cond_1

    .line 1106
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v8, v14

    .line 1108
    move-object v14, v6

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    move-object v15, v8

    if-ne v14, v15, :cond_0

    .line 1109
    move-object v14, v0

    move-object v15, v5

    move/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1105
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1114
    :cond_1
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v7, v14

    .line 1115
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v8, v14

    .line 1116
    move-object v14, v0

    move-object v15, v5

    move-object/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1117
    move-object v14, v0

    move-object v15, v5

    const/16 v16, 0x1

    move-object/from16 v17, v8

    invoke-virtual/range {v14 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1118
    move-object v14, v7

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1100
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1121
    :cond_3
    move-object v14, v0

    move-object v15, v5

    move-object/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1124
    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v9, v14

    :goto_2
    move v14, v9

    move v15, v3

    if-ge v14, v15, :cond_2

    .line 1125
    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v10, v14

    .line 1126
    move-object v14, v10

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v11, v14

    .line 1127
    move-object v14, v11

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    move-object v12, v14

    .line 1129
    move-object v14, v12

    if-eqz v14, :cond_4

    move-object v14, v12

    move-object v15, v0

    move-object/from16 v16, v10

    move-object/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1130
    move v14, v1

    if-nez v14, :cond_5

    move-object v14, v11

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1133
    move-object v14, v11

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1124
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1137
    :cond_5
    move-object v14, v12

    move-object v15, v0

    move-object/from16 v16, v10

    move-object/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v14

    move v13, v14

    .line 1139
    move v14, v1

    if-eqz v14, :cond_4

    .line 1142
    move-object v14, v11

    move v15, v13

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_3

    .line 1147
    :cond_6
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 9

    .prologue
    .line 1371
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 1372
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v3, v5

    .line 1373
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1374
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v4, v5

    .line 1375
    move-object v5, v0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    if-eq v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1377
    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_2

    move-object v5, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object v6, v4

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 1380
    :goto_3
    return v0

    .line 1373
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1375
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1377
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1380
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v6

    .line 1067
    move-object v6, v5

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1068
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_0

    .line 1069
    move-object v6, v0

    new-instance v7, Landroid/graphics/Paint;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v6, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1071
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v7, v5

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1074
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1077
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-wide v9, v3

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method ensurePreDrawListener()V
    .locals 7

    .prologue
    .line 1234
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 1235
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v2, v5

    .line 1236
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 1237
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1238
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1239
    const/4 v5, 0x1

    move v1, v5

    .line 1244
    :cond_0
    move v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v5, v6, :cond_1

    .line 1245
    move v5, v1

    if-eqz v5, :cond_3

    .line 1246
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1251
    :cond_1
    :goto_1
    return-void

    .line 1236
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1248
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1400
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1385
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1390
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1391
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    move-object v0, v2

    .line 1395
    :goto_0
    return-object v0

    .line 1392
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1393
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 1395
    :cond_1
    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 816
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 824
    :goto_0
    return-void

    .line 819
    :cond_1
    move v4, v2

    if-eqz v4, :cond_2

    .line 820
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 824
    :goto_1
    goto :goto_0

    .line 822
    :cond_2
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v7

    .line 1213
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    move-object v3, v7

    .line 1214
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1216
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v4, v7

    .line 1217
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 1218
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 1219
    move-object v7, v6

    move-object v8, v1

    if-ne v7, v8, :cond_1

    .line 1217
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1223
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 1227
    :cond_2
    move-object v7, v3

    move-object v0, v7

    return-object v0
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 583
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 25

    .prologue
    .line 836
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v6, v19

    .line 837
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/support/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v19

    move/from16 v20, v3

    invoke-static/range {v19 .. v20}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v19

    move/from16 v7, v19

    .line 839
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v19

    move/from16 v20, v3

    invoke-static/range {v19 .. v20}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v19

    move/from16 v8, v19

    .line 843
    move/from16 v19, v7

    const/16 v20, 0x7

    and-int/lit8 v19, v19, 0x7

    move/from16 v9, v19

    .line 844
    move/from16 v19, v7

    const/16 v20, 0x70

    and-int/lit8 v19, v19, 0x70

    move/from16 v10, v19

    .line 845
    move/from16 v19, v8

    const/16 v20, 0x7

    and-int/lit8 v19, v19, 0x7

    move/from16 v11, v19

    .line 846
    move/from16 v19, v8

    const/16 v20, 0x70

    and-int/lit8 v19, v19, 0x70

    move/from16 v12, v19

    .line 848
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v13, v19

    .line 849
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v14, v19

    .line 857
    move/from16 v19, v11

    sparse-switch v19, :sswitch_data_0

    .line 860
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v15, v19

    .line 870
    :goto_0
    move/from16 v19, v12

    sparse-switch v19, :sswitch_data_1

    .line 873
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v16, v19

    .line 884
    :goto_1
    move/from16 v19, v9

    sparse-switch v19, :sswitch_data_2

    .line 887
    move/from16 v19, v15

    move/from16 v20, v13

    sub-int v19, v19, v20

    move/from16 v15, v19

    .line 897
    :goto_2
    move/from16 v19, v10

    sparse-switch v19, :sswitch_data_3

    .line 900
    move/from16 v19, v16

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 910
    :goto_3
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v19

    move/from16 v17, v19

    .line 911
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v19

    move/from16 v18, v19

    .line 914
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v19

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v20, v15

    move/from16 v21, v17

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v22, v13

    sub-int v21, v21, v22

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v15, v19

    .line 917
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v19

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v20, v16

    move/from16 v21, v18

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v22, v14

    sub-int v21, v21, v22

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v16, v19

    .line 921
    move-object/from16 v19, v5

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v22, v15

    move/from16 v23, v13

    add-int v22, v22, v23

    move/from16 v23, v16

    move/from16 v24, v14

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    .line 922
    return-void

    .line 863
    :sswitch_0
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v15, v19

    .line 864
    goto/16 :goto_0

    .line 866
    :sswitch_1
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v15, v19

    goto/16 :goto_0

    .line 876
    :sswitch_2
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v16, v19

    .line 877
    goto/16 :goto_1

    .line 879
    :sswitch_3
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v16, v19

    goto/16 :goto_1

    .line 891
    :sswitch_4
    goto/16 :goto_2

    .line 893
    :sswitch_5
    move/from16 v19, v15

    move/from16 v20, v13

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v15, v19

    goto/16 :goto_2

    .line 904
    :sswitch_6
    goto/16 :goto_3

    .line 906
    :sswitch_7
    move/from16 v19, v16

    move/from16 v20, v14

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v16, v19

    goto/16 :goto_3

    .line 857
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 870
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 884
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
    .end sparse-switch

    .line 897
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 801
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 802
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 803
    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 1575
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .locals 10

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v6

    .line 539
    move-object v6, v2

    iget-boolean v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v6, :cond_2

    .line 540
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 541
    const/4 v6, 0x0

    move-object v4, v6

    .line 542
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    const-class v7, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    if-nez v6, :cond_0

    .line 544
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 546
    :cond_0
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 548
    move-object v6, v2

    move-object v7, v4

    :try_start_0
    invoke-interface {v7}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_1
    :goto_1
    move-object v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 556
    :cond_2
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 549
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 550
    const-string v6, "CoordinatorLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default behavior class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v8}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_1
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    return v0
.end method

.method hasDependencies(Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 1257
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v6

    .line 1258
    move-object v6, v2

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1259
    const/4 v6, 0x1

    move v0, v6

    .line 1272
    :goto_0
    return v0

    .line 1262
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    move v3, v6

    .line 1263
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 1264
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1265
    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_2

    .line 1263
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1268
    :cond_2
    move-object v6, v2

    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1269
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1272
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 8

    .prologue
    .line 1357
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v4, v5

    .line 1358
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1359
    move-object v5, v4

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 15

    .prologue
    .line 1317
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v10

    .line 1318
    move-object v10, v3

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v10, :cond_3

    .line 1319
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    move-object v4, v10

    .line 1320
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v10

    .line 1321
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    move-object v6, v10

    .line 1323
    move-object v10, v0

    move-object v11, v3

    iget-object v11, v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1324
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    move-object v13, v5

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1325
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move-object v13, v4

    move-object v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1327
    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    move v7, v10

    .line 1328
    move-object v10, v6

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object v11, v5

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    move v8, v10

    .line 1330
    move v10, v7

    if-eqz v10, :cond_0

    .line 1331
    move-object v10, v1

    move v11, v7

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1333
    :cond_0
    move v10, v8

    if-eqz v10, :cond_1

    .line 1334
    move-object v10, v1

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1337
    :cond_1
    move v10, v7

    if-nez v10, :cond_2

    move v10, v8

    if-eqz v10, :cond_3

    .line 1339
    :cond_2
    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v9, v10

    .line 1340
    move-object v10, v9

    if-eqz v10, :cond_3

    .line 1341
    move-object v10, v9

    move-object v11, v0

    move-object v12, v1

    move-object v13, v3

    iget-object v13, v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    .line 1345
    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 7

    .prologue
    .line 208
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 209
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 210
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v2, :cond_1

    .line 211
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v2, :cond_0

    .line 212
    move-object v2, v0

    new-instance v3, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 214
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 215
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 217
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v2, :cond_2

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 222
    :cond_2
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 223
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 228
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 229
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 230
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 231
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 233
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 234
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 236
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 237
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 769
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 770
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 771
    move v3, v2

    if-lez v3, :cond_0

    .line 772
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 773
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 776
    :cond_0
    return-void

    .line 770
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move-object v2, v5

    .line 411
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    move v3, v5

    .line 414
    move v5, v3

    if-nez v5, :cond_0

    .line 415
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 418
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v5

    move v4, v5

    .line 420
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 421
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 424
    :cond_1
    move v5, v3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    move v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 425
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 428
    :cond_3
    move v5, v4

    move v0, v5

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 753
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v0

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    move v6, v12

    .line 754
    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v7, v12

    .line 755
    const/4 v12, 0x0

    move v8, v12

    :goto_0
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_2

    .line 756
    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object v9, v12

    .line 757
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v12

    .line 758
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v11, v12

    .line 760
    move-object v12, v11

    if-eqz v12, :cond_0

    move-object v12, v11

    move-object v13, v0

    move-object v14, v9

    move v15, v6

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 761
    :cond_0
    move-object v12, v0

    move-object v13, v9

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 755
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 764
    :cond_2
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 737
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 738
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 739
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 743
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_1
    move-object v4, v3

    iget v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v4, :cond_2

    .line 745
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 747
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 37

    .prologue
    .line 616
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 617
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 619
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v30

    move/from16 v5, v30

    .line 620
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v30

    move/from16 v6, v30

    .line 621
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v30

    move/from16 v7, v30

    .line 622
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v30

    move/from16 v8, v30

    .line 623
    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v30

    move/from16 v9, v30

    .line 624
    move/from16 v30, v9

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const/16 v30, 0x1

    :goto_0
    move/from16 v10, v30

    .line 625
    move/from16 v30, v3

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    move/from16 v11, v30

    .line 626
    move/from16 v30, v3

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    move/from16 v12, v30

    .line 627
    move/from16 v30, v4

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    move/from16 v13, v30

    .line 628
    move/from16 v30, v4

    invoke-static/range {v30 .. v30}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    move/from16 v14, v30

    .line 630
    move/from16 v30, v5

    move/from16 v31, v7

    add-int v30, v30, v31

    move/from16 v15, v30

    .line 631
    move/from16 v30, v6

    move/from16 v31, v8

    add-int v30, v30, v31

    move/from16 v16, v30

    .line 632
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v30

    move/from16 v17, v30

    .line 633
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v30

    move/from16 v18, v30

    .line 634
    const/16 v30, 0x0

    move/from16 v19, v30

    .line 636
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v30, 0x1

    :goto_1
    move/from16 v20, v30

    .line 638
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v21, v30

    .line 639
    const/16 v30, 0x0

    move/from16 v22, v30

    :goto_2
    move/from16 v30, v22

    move/from16 v31, v21

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 640
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move-object/from16 v30, v0

    move/from16 v31, v22

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/View;

    move-object/from16 v23, v30

    .line 641
    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object/from16 v24, v30

    .line 643
    const/16 v30, 0x0

    move/from16 v25, v30

    .line 644
    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move/from16 v30, v0

    if-ltz v30, :cond_2

    move/from16 v30, v11

    if-eqz v30, :cond_2

    .line 645
    move-object/from16 v30, v2

    move-object/from16 v31, v24

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v30

    move/from16 v26, v30

    .line 646
    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v30

    move/from16 v31, v9

    invoke-static/range {v30 .. v31}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v30

    const/16 v31, 0x7

    and-int/lit8 v30, v30, 0x7

    move/from16 v27, v30

    .line 649
    move/from16 v30, v27

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    move/from16 v30, v10

    if-eqz v30, :cond_1

    :cond_0
    move/from16 v30, v27

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    move/from16 v30, v10

    if-eqz v30, :cond_8

    .line 651
    :cond_1
    const/16 v30, 0x0

    move/from16 v31, v12

    move/from16 v32, v7

    sub-int v31, v31, v32

    move/from16 v32, v26

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v25, v30

    .line 658
    :cond_2
    :goto_3
    move/from16 v30, v3

    move/from16 v26, v30

    .line 659
    move/from16 v30, v4

    move/from16 v27, v30

    .line 660
    move/from16 v30, v20

    if-eqz v30, :cond_3

    move-object/from16 v30, v23

    invoke-static/range {v30 .. v30}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 663
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v28, v30

    .line 665
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v30

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v29, v30

    .line 668
    move/from16 v30, v12

    move/from16 v31, v28

    sub-int v30, v30, v31

    move/from16 v31, v11

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    move/from16 v26, v30

    .line 670
    move/from16 v30, v14

    move/from16 v31, v29

    sub-int v30, v30, v31

    move/from16 v31, v13

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    move/from16 v27, v30

    .line 674
    :cond_3
    move-object/from16 v30, v24

    invoke-virtual/range {v30 .. v30}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v30

    move-object/from16 v28, v30

    .line 675
    move-object/from16 v30, v28

    if-eqz v30, :cond_4

    move-object/from16 v30, v28

    move-object/from16 v31, v2

    move-object/from16 v32, v23

    move/from16 v33, v26

    move/from16 v34, v25

    move/from16 v35, v27

    const/16 v36, 0x0

    invoke-virtual/range {v30 .. v36}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v30

    if-nez v30, :cond_5

    .line 677
    :cond_4
    move-object/from16 v30, v2

    move-object/from16 v31, v23

    move/from16 v32, v26

    move/from16 v33, v25

    move/from16 v34, v27

    const/16 v35, 0x0

    invoke-virtual/range {v30 .. v35}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 681
    :cond_5
    move/from16 v30, v17

    move/from16 v31, v15

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v17, v30

    .line 684
    move/from16 v30, v18

    move/from16 v31, v16

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v18, v30

    .line 686
    move/from16 v30, v19

    move-object/from16 v31, v23

    invoke-static/range {v31 .. v31}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v30

    move/from16 v19, v30

    .line 639
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 624
    :cond_6
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 636
    :cond_7
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 652
    :cond_8
    move/from16 v30, v27

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    move/from16 v30, v10

    if-eqz v30, :cond_a

    :cond_9
    move/from16 v30, v27

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    move/from16 v30, v10

    if-eqz v30, :cond_2

    .line 654
    :cond_a
    const/16 v30, 0x0

    move/from16 v31, v26

    move/from16 v32, v5

    sub-int v31, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v25, v30

    goto/16 :goto_3

    .line 690
    :cond_b
    move/from16 v30, v17

    move/from16 v31, v3

    move/from16 v32, v19

    const/high16 v33, -0x1000000

    and-int v32, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v30

    move/from16 v22, v30

    .line 692
    move/from16 v30, v18

    move/from16 v31, v4

    move/from16 v32, v19

    const/16 v33, 0x10

    shl-int/lit8 v32, v32, 0x10

    invoke-static/range {v30 .. v32}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v30

    move/from16 v23, v30

    .line 694
    move-object/from16 v30, v2

    move/from16 v31, v22

    move/from16 v32, v23

    invoke-virtual/range {v30 .. v32}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 695
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 612
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 19

    .prologue
    .line 1533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v11, 0x0

    move v5, v11

    .line 1535
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v6, v11

    .line 1536
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_2

    .line 1537
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 1538
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v9, v11

    .line 1539
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1536
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v10, v11

    .line 1544
    move-object v11, v10

    if-eqz v11, :cond_0

    .line 1545
    move v11, v5

    move-object v12, v10

    move-object v13, v0

    move-object v14, v8

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v12

    or-int/2addr v11, v12

    move v5, v11

    goto :goto_1

    .line 1549
    :cond_2
    move v11, v5

    if-eqz v11, :cond_3

    .line 1550
    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1552
    :cond_3
    move v11, v5

    move v0, v11

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 17

    .prologue
    .line 1556
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v10, 0x0

    move v4, v10

    .line 1558
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v5, v10

    .line 1559
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    .line 1560
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1561
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v10

    .line 1562
    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1559
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1566
    :cond_1
    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v9, v10

    .line 1567
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 1568
    move v10, v4

    move-object v11, v9

    move-object v12, v0

    move-object v13, v7

    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v11

    or-int/2addr v10, v11

    move v4, v10

    goto :goto_1

    .line 1571
    :cond_2
    move v10, v4

    move v0, v10

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 24

    .prologue
    .line 1498
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v14, 0x0

    move v6, v14

    .line 1499
    const/4 v14, 0x0

    move v7, v14

    .line 1500
    const/4 v14, 0x0

    move v8, v14

    .line 1502
    move-object v14, v1

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v14

    move v9, v14

    .line 1503
    const/4 v14, 0x0

    move v10, v14

    :goto_0
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_4

    .line 1504
    move-object v14, v1

    move v15, v10

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v11, v14

    .line 1505
    move-object v14, v11

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v12, v14

    .line 1506
    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1503
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1510
    :cond_1
    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    move-object v13, v14

    .line 1511
    move-object v14, v13

    if-eqz v14, :cond_0

    .line 1512
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v23, v18

    move/from16 v16, v23

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    aput v19, v17, v18

    aput v16, v14, v15

    .line 1513
    move-object v14, v13

    move-object v15, v1

    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1515
    move v14, v3

    if-lez v14, :cond_2

    move v14, v6

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    move v6, v14

    .line 1517
    move v14, v4

    if-lez v14, :cond_3

    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_3
    move v7, v14

    .line 1520
    const/4 v14, 0x1

    move v8, v14

    goto :goto_1

    .line 1515
    :cond_2
    move v14, v6

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_2

    .line 1517
    :cond_3
    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_3

    .line 1524
    :cond_4
    move-object v14, v5

    const/4 v15, 0x0

    move/from16 v16, v6

    aput v16, v14, v15

    .line 1525
    move-object v14, v5

    const/4 v15, 0x1

    move/from16 v16, v7

    aput v16, v14, v15

    .line 1527
    move v14, v8

    if-eqz v14, :cond_5

    .line 1528
    move-object v14, v1

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1530
    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 20

    .prologue
    .line 1474
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    move v6, v12

    .line 1475
    const/4 v12, 0x0

    move v7, v12

    .line 1477
    const/4 v12, 0x0

    move v8, v12

    :goto_0
    move v12, v8

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 1478
    move-object v12, v0

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 1479
    move-object v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v12

    .line 1480
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1477
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1484
    :cond_1
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    move-object v11, v12

    .line 1485
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 1486
    move-object v12, v11

    move-object v13, v0

    move-object v14, v9

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1488
    const/4 v12, 0x1

    move v7, v12

    goto :goto_1

    .line 1492
    :cond_2
    move v12, v7

    if-eqz v12, :cond_3

    .line 1493
    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1495
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 15

    .prologue
    .line 1430
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1431
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1432
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1434
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v4, v9

    .line 1435
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 1436
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1437
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v9

    .line 1438
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1435
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1442
    :cond_1
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    move-object v8, v9

    .line 1443
    move-object v9, v8

    if-eqz v9, :cond_0

    .line 1444
    move-object v9, v8

    move-object v10, v0

    move-object v11, v6

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1447
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 15

    .prologue
    .line 2550
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-object v2, v11

    .line 2551
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-super {v11, v12}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2553
    move-object v11, v2

    iget-object v11, v11, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move-object v3, v11

    .line 2555
    const/4 v11, 0x0

    move v4, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v5, v11

    :goto_0
    move v11, v4

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 2556
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v6, v11

    .line 2557
    move-object v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    move v7, v11

    .line 2558
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v11

    move-object v8, v11

    .line 2559
    move-object v11, v8

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v9, v11

    .line 2561
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    move-object v11, v9

    if-eqz v11, :cond_0

    .line 2562
    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Parcelable;

    move-object v10, v11

    .line 2563
    move-object v11, v10

    if-eqz v11, :cond_0

    .line 2564
    move-object v11, v9

    move-object v12, v0

    move-object v13, v6

    move-object v14, v10

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2555
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2568
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 2572
    move-object v0, p0

    new-instance v10, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-super {v12}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v10

    .line 2574
    new-instance v10, Landroid/util/SparseArray;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v10

    .line 2575
    const/4 v10, 0x0

    move v3, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v4, v10

    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 2576
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v5, v10

    .line 2577
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    move v6, v10

    .line 2578
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v7, v10

    .line 2579
    move-object v10, v7

    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    move-object v8, v10

    .line 2581
    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    move-object v10, v8

    if-eqz v10, :cond_0

    .line 2583
    move-object v10, v8

    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v9, v10

    .line 2584
    move-object v10, v9

    if-eqz v10, :cond_0

    .line 2585
    move-object v10, v2

    move v11, v6

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2575
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2589
    :cond_1
    move-object v10, v1

    move-object v11, v2

    iput-object v11, v10, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2590
    move-object v10, v1

    move-object v0, v10

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 17

    .prologue
    .line 1409
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v11, 0x0

    move v4, v11

    .line 1411
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    move v5, v11

    .line 1412
    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 1413
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    .line 1414
    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v8, v11

    .line 1415
    move-object v11, v8

    invoke-virtual {v11}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    move-object v9, v11

    .line 1416
    move-object v11, v9

    if-eqz v11, :cond_0

    .line 1417
    move-object v11, v9

    move-object v12, v0

    move-object v13, v7

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v11

    move v10, v11

    .line 1419
    move v11, v4

    move v12, v10

    or-int/2addr v11, v12

    move v4, v11

    .line 1421
    move-object v11, v8

    move v12, v10

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1412
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    goto :goto_1

    .line 1426
    :cond_1
    move v11, v4

    move v0, v11

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 11

    .prologue
    .line 1450
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1452
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    move v2, v7

    .line 1453
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 1454
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 1455
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v5, v7

    .line 1456
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1453
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    move-object v6, v7

    .line 1461
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 1462
    move-object v7, v6

    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1464
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1465
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    .line 1468
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1469
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1470
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .prologue
    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move v2, v8

    .line 434
    const/4 v8, 0x0

    move v3, v8

    .line 435
    const/4 v8, 0x0

    move-object v4, v8

    .line 437
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    move v5, v8

    .line 439
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v8

    move/from16 v16, v8

    move/from16 v8, v16

    move/from16 v9, v16

    move v3, v9

    if-eqz v8, :cond_1

    .line 442
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v6, v8

    .line 443
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    move-object v7, v8

    .line 444
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 445
    move-object v8, v7

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    move-object v11, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    move v2, v8

    .line 450
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v8, :cond_7

    .line 451
    move v8, v2

    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 461
    :cond_2
    :goto_0
    move v8, v2

    if-nez v8, :cond_3

    move v8, v5

    if-nez v8, :cond_3

    .line 465
    :cond_3
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 466
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 469
    :cond_4
    move v8, v5

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    move v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 470
    :cond_5
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 473
    :cond_6
    move v8, v2

    move v0, v8

    return v0

    .line 452
    :cond_7
    move v8, v3

    if-eqz v8, :cond_2

    .line 453
    move-object v8, v4

    if-nez v8, :cond_8

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v6, v8

    .line 455
    move-wide v8, v6

    move-wide v10, v6

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    move-object v4, v8

    .line 458
    :cond_8
    move-object v8, v0

    move-object v9, v4

    invoke-super {v8, v9}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v4

    .line 790
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 791
    return-void
.end method

.method removePreDrawListener()V
    .locals 4

    .prologue
    .line 1299
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_0

    .line 1300
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v2, :cond_0

    .line 1301
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v1, v2

    .line 1302
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1305
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1306
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 479
    move v2, v1

    if-eqz v2, :cond_0

    .line 480
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 482
    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 204
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 247
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 248
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 7

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-void

    .line 266
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
