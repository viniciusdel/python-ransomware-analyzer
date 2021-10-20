.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/support/v7/widget/ListPopupWindow$DropDownListView;,
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 81
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "getMaxAvailableHeight"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 89
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 90
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 14

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 100
    move-object v7, v0

    const/4 v8, -0x2

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 101
    move-object v7, v0

    const/4 v8, -0x2

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 104
    move-object v7, v0

    const/16 v8, 0x3ea

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 107
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 109
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 110
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 111
    move-object v7, v0

    const v8, 0x7fffffff

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 114
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 125
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    .line 126
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 127
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    .line 128
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    .line 133
    move-object v7, v0

    new-instance v8, Landroid/graphics/Rect;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 237
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 238
    move-object v7, v0

    new-instance v8, Landroid/os/Handler;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-virtual {v10}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 240
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 242
    move-object v7, v0

    move-object v8, v5

    sget v9, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 244
    move-object v7, v0

    move-object v8, v5

    sget v9, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 246
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v7, :cond_0

    .line 247
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 249
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/AppCompatPopupWindow;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 252
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 255
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v6, v7

    .line 256
    move-object v7, v0

    move-object v8, v6

    invoke-static {v8}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow;->mLayoutDirection:I

    .line 257
    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v0, v1

    return-object v0
.end method

.method private buildDropDown()I
    .locals 18

    .prologue
    .line 1075
    move-object/from16 v0, p0

    const/4 v11, 0x0

    move v2, v11

    .line 1077
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    if-nez v11, :cond_8

    .line 1078
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    move-object v3, v11

    .line 1086
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$2;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1096
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v3

    move-object v15, v0

    iget-boolean v15, v15, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v15, :cond_6

    const/4 v15, 0x1

    :goto_0
    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    .line 1097
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1098
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1100
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1101
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1102
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1103
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1104
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$3;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/ListPopupWindow$3;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1120
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1122
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v11, :cond_1

    .line 1123
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1126
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v1, v11

    .line 1128
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v4, v11

    .line 1129
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 1132
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v3

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v11

    .line 1133
    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1135
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v6, v11

    .line 1139
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v11, :pswitch_data_0

    .line 1151
    const-string v11, "ListPopupWindow"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid hint position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1159
    :goto_1
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v11, :cond_7

    .line 1160
    const/high16 v11, -0x80000000

    move v8, v11

    .line 1161
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v7, v11

    .line 1166
    :goto_2
    move v11, v7

    move v12, v8

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v9, v11

    .line 1167
    const/4 v11, 0x0

    move v10, v11

    .line 1168
    move-object v11, v4

    move v12, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 1170
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v11

    .line 1171
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    .line 1174
    move-object v11, v5

    move-object v1, v11

    .line 1177
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1191
    :cond_3
    :goto_3
    const/4 v11, 0x0

    move v3, v11

    .line 1192
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v4, v11

    .line 1193
    move-object v11, v4

    if-eqz v11, :cond_9

    .line 1194
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v11

    .line 1195
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move v3, v11

    .line 1199
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v11, :cond_4

    .line 1200
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    iput v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1207
    :cond_4
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_5
    move v5, v11

    .line 1209
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v14, v5

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v11

    move v6, v11

    .line 1211
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v11, :cond_5

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1212
    :cond_5
    move v11, v6

    move v12, v3

    add-int/2addr v11, v12

    move v0, v11

    .line 1240
    :goto_6
    return v0

    .line 1096
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1141
    :pswitch_0
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1143
    goto/16 :goto_1

    .line 1146
    :pswitch_1
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    goto/16 :goto_1

    .line 1163
    :cond_7
    const/4 v11, 0x0

    move v8, v11

    .line 1164
    const/4 v11, 0x0

    move v7, v11

    goto/16 :goto_2

    .line 1179
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v1, v11

    .line 1180
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v3, v11

    .line 1181
    move-object v11, v3

    if-eqz v11, :cond_3

    .line 1182
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, v11

    .line 1184
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    goto/16 :goto_3

    .line 1203
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_4

    .line 1207
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 1216
    :cond_b
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v11, :pswitch_data_1

    .line 1230
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1234
    :goto_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move v12, v7

    const/4 v13, 0x0

    const/4 v14, -0x1

    move v15, v6

    move/from16 v16, v2

    sub-int v15, v15, v16

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v11

    move v8, v11

    .line 1238
    move v11, v8

    if-lez v11, :cond_c

    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 1240
    :cond_c
    move v11, v8

    move v12, v2

    add-int/2addr v11, v12

    move v0, v11

    goto/16 :goto_6

    .line 1218
    :pswitch_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1222
    goto :goto_7

    .line 1224
    :pswitch_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1228
    goto :goto_7

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1216
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 12

    .prologue
    .line 1846
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-object v5, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 1848
    :try_start_0
    sget-object v5, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 1855
    :goto_0
    return v0

    .line 1850
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1851
    const-string v5, "ListPopupWindow"

    const-string v6, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1855
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private static isConfirmKey(I)Z
    .locals 3

    .prologue
    .line 1832
    move v0, p0

    move v1, v0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 5

    .prologue
    .line 714
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 715
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    .line 716
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 717
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 718
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 721
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 10

    .prologue
    .line 1836
    move-object v0, p0

    move v1, p1

    sget-object v3, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1838
    :try_start_0
    sget-object v3, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1839
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1840
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 4

    .prologue
    .line 773
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v1, v2

    .line 774
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 776
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/widget/ListPopupWindow$DropDownListView;Z)Z

    move-result v2

    .line 778
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 780
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 7

    .prologue
    .line 1059
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V

    move-object v0, v2

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 698
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 699
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 700
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    .line 701
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v0, v1

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 2

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move v0, v1

    return v0
.end method

.method public getInputMethodMode()I
    .locals 2

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 871
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v0, v1

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    move v0, v1

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 821
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    const/4 v1, 0x0

    move-object v0, v1

    .line 824
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 3

    .prologue
    .line 847
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    const-wide/high16 v1, -0x8000000000000000L

    move-wide v0, v1

    .line 850
    :goto_0
    return-wide v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v1

    move-wide v0, v1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 834
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    const/4 v1, -0x1

    move v0, v1

    .line 837
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 860
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    const/4 v1, 0x0

    move-object v0, v1

    .line 863
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getVerticalOffset()I
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_0

    .line 469
    const/4 v1, 0x0

    move v0, v1

    .line 471
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v0, v1

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    move v0, v1

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 3

    .prologue
    .line 794
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    move v0, v1

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 786
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    .prologue
    .line 896
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 902
    move v10, v1

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_8

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v10

    if-gez v10, :cond_0

    move v10, v1

    invoke-static {v10}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 905
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v10

    move v3, v10

    .line 908
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    .line 910
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v10

    .line 913
    const v10, 0x7fffffff

    move v8, v10

    .line 914
    const/high16 v10, -0x80000000

    move v9, v10

    .line 916
    move-object v10, v6

    if-eqz v10, :cond_1

    .line 917
    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v10

    move v7, v10

    .line 918
    move v10, v7

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    move v8, v10

    .line 920
    move v10, v7

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    :goto_2
    move v9, v10

    .line 924
    :cond_1
    move v10, v5

    if-eqz v10, :cond_2

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_2

    move v10, v3

    move v11, v8

    if-le v10, v11, :cond_3

    :cond_2
    move v10, v5

    if-nez v10, :cond_7

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_7

    move v10, v3

    move v11, v9

    if-lt v10, v11, :cond_7

    .line 928
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 929
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 930
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 931
    const/4 v10, 0x1

    move v0, v10

    .line 976
    :goto_3
    return v0

    .line 908
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 918
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_1

    .line 920
    :cond_6
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v11, v6

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_2

    .line 935
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/widget/ListPopupWindow$DropDownListView;Z)Z

    move-result v10

    .line 938
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    move v4, v10

    .line 941
    move v10, v4

    if-eqz v10, :cond_9

    .line 944
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 949
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    move-result v10

    .line 950
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 952
    move v10, v1

    sparse-switch v10, :sswitch_data_0

    .line 976
    :cond_8
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 959
    :sswitch_0
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 962
    :cond_9
    move v10, v5

    if-eqz v10, :cond_a

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_a

    .line 965
    move v10, v3

    move v11, v9

    if-ne v10, v11, :cond_8

    .line 966
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 968
    :cond_a
    move v10, v5

    if-nez v10, :cond_8

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_8

    move v10, v3

    move v11, v8

    if-ne v10, v11, :cond_8

    .line 970
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 952
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 1014
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1017
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 1018
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1019
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1020
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1021
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1023
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 1035
    :goto_0
    return v0

    .line 1024
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1025
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1026
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 1027
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1029
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1030
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1031
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1035
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 990
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 991
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v3, v4

    .line 992
    move v4, v3

    if-eqz v4, :cond_0

    move v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 995
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 997
    :cond_0
    move v4, v3

    move v0, v4

    .line 999
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 11

    .prologue
    .line 805
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 806
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_0

    .line 807
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v2, v5

    .line 808
    move-object v5, v2

    move v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 809
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move-object v4, v5

    .line 810
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v6, v2

    move-object v7, v3

    move v8, v1

    move-object v9, v4

    move v10, v1

    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 812
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 814
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public postShow()V
    .locals 3

    .prologue
    .line 599
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 600
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 8

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v2, :cond_3

    .line 267
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 271
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 272
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 273
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 276
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    if-eqz v2, :cond_2

    .line 277
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    :cond_2
    return-void

    .line 268
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 269
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 446
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 4

    .prologue
    .line 417
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 418
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 518
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 519
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 520
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 521
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 351
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 4

    .prologue
    .line 491
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 492
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 336
    return-void
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 540
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 541
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 462
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 4

    .prologue
    .line 736
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 737
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 4

    .prologue
    .line 881
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 882
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 393
    return-void
.end method

.method public setModal(Z)V
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 315
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 316
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 711
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 565
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 4

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 576
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 292
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    move v2, v3

    .line 586
    move v3, v2

    if-eqz v3, :cond_0

    .line 587
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 589
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 590
    move v3, v2

    if-eqz v3, :cond_1

    .line 591
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 593
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 755
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-object v2, v3

    .line 756
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 757
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/widget/ListPopupWindow$DropDownListView;Z)Z

    move-result v3

    .line 758
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 760
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 761
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 766
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 4

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 374
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 481
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 482
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 508
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 509
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 554
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    .line 607
    move-object v0, p0

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I

    move-result v5

    move v1, v5

    .line 609
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v5

    move v2, v5

    .line 610
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v5, v6}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 612
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 614
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 617
    const/4 v5, -0x1

    move v3, v5

    .line 625
    :goto_0
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 628
    move v5, v2

    if-eqz v5, :cond_3

    move v5, v1

    :goto_1
    move v4, v5

    .line 629
    move v5, v2

    if-eqz v5, :cond_5

    .line 630
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    const/4 v6, -0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 632
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 644
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v6, :cond_9

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 646
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v9, v3

    if-gez v9, :cond_a

    const/4 v9, -0x1

    :goto_5
    move v10, v4

    if-gez v10, :cond_b

    const/4 v10, -0x1

    :goto_6
    invoke-virtual/range {v5 .. v10}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 691
    :cond_0
    :goto_7
    return-void

    .line 618
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    .line 619
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 621
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v5

    goto :goto_0

    .line 628
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .line 630
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 634
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    const/4 v6, -0x1

    :goto_8
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 636
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    .line 634
    :cond_6
    const/4 v6, 0x0

    goto :goto_8

    .line 638
    :cond_7
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    .line 639
    move v5, v1

    move v4, v5

    goto :goto_3

    .line 641
    :cond_8
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v5

    goto :goto_3

    .line 644
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 646
    :cond_a
    move v9, v3

    goto :goto_5

    :cond_b
    move v10, v4

    goto :goto_6

    .line 651
    :cond_c
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_f

    .line 652
    const/4 v5, -0x1

    move v3, v5

    .line 662
    :goto_9
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    .line 663
    const/4 v5, -0x1

    move v4, v5

    .line 672
    :goto_a
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 673
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 674
    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 678
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v6, :cond_13

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v6, :cond_13

    const/4 v6, 0x1

    :goto_b
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 679
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 680
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 682
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 684
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-eqz v5, :cond_d

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 685
    :cond_d
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 687
    :cond_e
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v5, :cond_0

    .line 688
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    goto/16 :goto_7

    .line 654
    :cond_f
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_10

    .line 655
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move v3, v5

    goto/16 :goto_9

    .line 657
    :cond_10
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v5

    goto/16 :goto_9

    .line 665
    :cond_11
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_12

    .line 666
    move v5, v1

    move v4, v5

    goto/16 :goto_a

    .line 668
    :cond_12
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v5

    goto/16 :goto_a

    .line 678
    :cond_13
    const/4 v6, 0x0

    goto :goto_b
.end method
