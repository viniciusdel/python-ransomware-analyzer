.class public final Landroid/support/v7/widget/TintManager;
.super Ljava/lang/Object;
.source "TintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/TintManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final INSTANCE_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/TintManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOULD_BE_USED:Z

.field private static final TAG:Ljava/lang/String; = "TintManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private mTintLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/TintManager;->SHOULD_BE_USED:Z

    .line 53
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 72
    const/16 v0, 0xc

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 112
    const/16 v0, 0xa

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_full_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/TintManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 164
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 165
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 263
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 264
    const/4 v6, 0x1

    move v0, v6

    .line 267
    :goto_1
    return v0

    .line 262
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 13

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v8, 0x4

    new-array v8, v8, [[I

    move-object v3, v8

    .line 507
    const/4 v8, 0x4

    new-array v8, v8, [I

    move-object v4, v8

    .line 508
    const/4 v8, 0x0

    move v5, v8

    .line 510
    move-object v8, v1

    move v9, v2

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v6, v8

    .line 511
    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v7, v8

    .line 514
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 515
    move-object v8, v4

    move v9, v5

    move-object v10, v1

    sget v11, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {v10, v11}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v10

    aput v10, v8, v9

    .line 516
    add-int/lit8 v5, v5, 0x1

    .line 518
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 519
    move-object v8, v4

    move v9, v5

    move v10, v7

    move v11, v6

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    aput v10, v8, v9

    .line 520
    add-int/lit8 v5, v5, 0x1

    .line 522
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 523
    move-object v8, v4

    move v9, v5

    move v10, v7

    move v11, v6

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    aput v10, v8, v9

    .line 524
    add-int/lit8 v5, v5, 0x1

    .line 527
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v10, v8, v9

    .line 528
    move-object v8, v4

    move v9, v5

    move v10, v6

    aput v10, v8, v9

    .line 529
    add-int/lit8 v5, v5, 0x1

    .line 531
    new-instance v8, Landroid/content/res/ColorStateList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v8

    return-object v0
.end method

.method private createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 387
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 388
    const/4 v5, 0x0

    move v4, v5

    .line 391
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 392
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 393
    add-int/lit8 v4, v4, 0x1

    .line 395
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 396
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 400
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 401
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 402
    add-int/lit8 v4, v4, 0x1

    .line 404
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/TintManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/TintManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 477
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 478
    const/4 v5, 0x0

    move v4, v5

    .line 481
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 482
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 483
    add-int/lit8 v4, v4, 0x1

    .line 485
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 486
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 487
    add-int/lit8 v4, v4, 0x1

    .line 490
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 491
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 494
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x2

    new-array v5, v5, [[I

    move-object v2, v5

    .line 557
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 558
    const/4 v5, 0x0

    move v4, v5

    .line 561
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 562
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 563
    add-int/lit8 v4, v4, 0x1

    .line 565
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 566
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 567
    add-int/lit8 v4, v4, 0x1

    .line 569
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 536
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 537
    const/4 v5, 0x0

    move v4, v5

    .line 540
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 541
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 542
    add-int/lit8 v4, v4, 0x1

    .line 544
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 545
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 546
    add-int/lit8 v4, v4, 0x1

    .line 548
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 549
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 550
    add-int/lit8 v4, v4, 0x1

    .line 552
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 12

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x3

    new-array v6, v6, [[I

    move-object v2, v6

    .line 431
    const/4 v6, 0x3

    new-array v6, v6, [I

    move-object v3, v6

    .line 432
    const/4 v6, 0x0

    move v4, v6

    .line 434
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v6, v7}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    .line 437
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 442
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 443
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    move-object v9, v2

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v7

    .line 444
    add-int/lit8 v4, v4, 0x1

    .line 446
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 447
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 448
    add-int/lit8 v4, v4, 0x1

    .line 451
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v8, v6, v7

    .line 452
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    aput v8, v6, v7

    .line 453
    add-int/lit8 v4, v4, 0x1

    .line 472
    :goto_0
    new-instance v6, Landroid/content/res/ColorStateList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v6

    return-object v0

    .line 458
    :cond_0
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 459
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 460
    add-int/lit8 v4, v4, 0x1

    .line 462
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 463
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 464
    add-int/lit8 v4, v4, 0x1

    .line 467
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v8, v6, v7

    .line 468
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 469
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 11

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 409
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 410
    const/4 v5, 0x0

    move v4, v5

    .line 413
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 414
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    const v8, 0x1010030

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v7

    aput v7, v5, v6

    .line 415
    add-int/lit8 v4, v4, 0x1

    .line 417
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 418
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v7

    aput v7, v5, v6

    .line 419
    add-int/lit8 v4, v4, 0x1

    .line 422
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 423
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    const v8, 0x1010030

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v7

    aput v7, v5, v6

    .line 424
    add-int/lit8 v4, v4, 0x1

    .line 426
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 7

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 645
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 648
    :goto_0
    return-object v0

    .line 647
    :cond_1
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 648
    move v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/TintManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    sget-object v2, Landroid/support/v7/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/TintManager;

    move-object v1, v2

    .line 156
    move-object v2, v1

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Landroid/support/v7/widget/TintManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/TintManager;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 158
    sget-object v2, Landroid/support/v7/widget/TintManager;->INSTANCE_CACHE:Ljava/util/WeakHashMap;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 160
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private getDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 13

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v7, :cond_0

    .line 342
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    move v2, v7

    .line 343
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    move v3, v7

    .line 346
    const/4 v7, 0x7

    new-array v7, v7, [[I

    move-object v4, v7

    .line 347
    const/4 v7, 0x7

    new-array v7, v7, [I

    move-object v5, v7

    .line 348
    const/4 v7, 0x0

    move v6, v7

    .line 351
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 352
    move-object v7, v5

    move v8, v6

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    aput v9, v7, v8

    .line 353
    add-int/lit8 v6, v6, 0x1

    .line 355
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 356
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 357
    add-int/lit8 v6, v6, 0x1

    .line 359
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 360
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 361
    add-int/lit8 v6, v6, 0x1

    .line 363
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 364
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 365
    add-int/lit8 v6, v6, 0x1

    .line 367
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 368
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 369
    add-int/lit8 v6, v6, 0x1

    .line 371
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 372
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 373
    add-int/lit8 v6, v6, 0x1

    .line 376
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v9, v7, v8

    .line 377
    move-object v7, v5

    move v8, v6

    move v9, v2

    aput v9, v7, v8

    .line 378
    add-int/lit8 v6, v6, 0x1

    .line 380
    move-object v7, v0

    new-instance v8, Landroid/content/res/ColorStateList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v8, v7, Landroid/support/v7/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    .line 382
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    move-object v0, v7

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/TintManager;->isInTintList(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .line 147
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 8

    .prologue
    .line 653
    move v0, p0

    move-object v1, p1

    sget-object v3, Landroid/support/v7/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    move-object v2, v3

    .line 655
    move-object v3, v2

    if-nez v3, :cond_0

    .line 657
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 658
    sget-object v3, Landroid/support/v7/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/TintManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/TintManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 661
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private static isInTintList(I)Z
    .locals 3

    .prologue
    .line 271
    move v0, p0

    sget-object v1, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    move v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/TintManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    move v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    move v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    move v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    move v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/TintManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    move v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

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

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 665
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    if-nez v5, :cond_0

    sget-object v5, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v4, v5}, Landroid/support/v7/widget/TintManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 666
    return-void

    .line 665
    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method private static shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 9

    .prologue
    .line 617
    move-object v0, p0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    .line 619
    const/4 v7, 0x1

    move v0, v7

    .line 639
    :goto_0
    return v0

    .line 622
    :cond_0
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_2

    .line 623
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 624
    :cond_2
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v7, :cond_4

    .line 625
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 626
    :cond_4
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v7, :cond_6

    .line 628
    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    move-object v1, v7

    .line 629
    move-object v7, v1

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v7, :cond_6

    .line 630
    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v2, v7

    .line 632
    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_3
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_6

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 633
    move-object v7, v6

    invoke-static {v7}, Landroid/support/v7/widget/TintManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 634
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 632
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 639
    :cond_6
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 7

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v7/widget/TintManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 596
    const-string v3, "TintManager"

    const-string v4, "Mutated drawable is not the same instance as the input."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 614
    :goto_0
    return-void

    .line 600
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_1

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_5

    .line 601
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_1
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_4

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/TintManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 609
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_2

    .line 612
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 614
    :cond_2
    goto :goto_0

    .line 601
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    sget-object v5, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 606
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 15

    .prologue
    .line 172
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    move-object v3, v7

    .line 173
    move-object v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 216
    :goto_0
    return-object v0

    .line 175
    :cond_0
    move-object v7, v3

    move v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 177
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 178
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-lt v7, v8, :cond_1

    .line 180
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 183
    :cond_1
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object v5, v7

    .line 184
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 186
    move-object v7, v4

    invoke-static {v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 187
    move-object v7, v4

    move-object v8, v5

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 190
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/TintManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    move-object v6, v7

    .line 191
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 192
    move-object v7, v4

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 216
    :cond_2
    :goto_1
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 194
    :cond_3
    move v7, v1

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne v7, v8, :cond_4

    .line 195
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v7

    goto :goto_0

    .line 199
    :cond_4
    move v7, v1

    sget v8, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne v7, v8, :cond_5

    .line 200
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v7

    .line 201
    move-object v7, v6

    const/high16 v8, 0x1020000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    move-object v7, v6

    const v8, 0x102000f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    move-object v7, v6

    const v8, 0x102000d

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/TintManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 207
    goto :goto_1

    .line 208
    :cond_5
    move-object v7, v0

    move v8, v1

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v6, v7

    .line 209
    move v7, v6

    if-nez v7, :cond_2

    move v7, v2

    if-eqz v7, :cond_2

    .line 212
    const/4 v7, 0x0

    move-object v4, v7

    goto/16 :goto_1
.end method

.method public final getTintList(I)Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    .line 291
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v2, v4

    .line 292
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 332
    :goto_0
    return-object v0

    .line 295
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    :goto_1
    move-object v3, v4

    .line 297
    move-object v4, v3

    if-nez v4, :cond_3

    .line 299
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne v4, v5, :cond_5

    .line 300
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    .line 323
    :cond_1
    :goto_2
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 324
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    if-nez v4, :cond_2

    .line 326
    move-object v4, v0

    new-instance v5, Landroid/util/SparseArray;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v4, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    .line 329
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/TintManager;->mTintLists:Landroid/util/SparseArray;

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 332
    :cond_3
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 295
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 301
    :cond_5
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne v4, v5, :cond_6

    .line 302
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 303
    :cond_6
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v4, v5, :cond_7

    .line 304
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 305
    :cond_7
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-eq v4, v5, :cond_8

    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne v4, v5, :cond_9

    .line 307
    :cond_8
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 308
    :cond_9
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne v4, v5, :cond_a

    .line 309
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 310
    :cond_a
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq v4, v5, :cond_b

    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne v4, v5, :cond_c

    .line 312
    :cond_b
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 313
    :cond_c
    sget-object v4, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 314
    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v4, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 315
    :cond_d
    sget-object v4, Landroid/support/v7/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 316
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->getDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_2

    .line 317
    :cond_e
    sget-object v4, Landroid/support/v7/widget/TintManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 318
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_2

    .line 319
    :cond_f
    move v4, v1

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne v4, v5, :cond_1

    .line 320
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/TintManager;->createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_2
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 283
    move v3, v1

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v3, v4, :cond_0

    .line 284
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v2, v3

    .line 287
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public final tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/TintManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    move-object v3, v9

    .line 221
    move-object v9, v3

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move v0, v9

    .line 258
    :goto_0
    return v0

    .line 223
    :cond_0
    sget-object v9, Landroid/support/v7/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    move-object v4, v9

    .line 224
    const/4 v9, 0x0

    move v5, v9

    .line 225
    const/4 v9, 0x0

    move v6, v9

    .line 226
    const/4 v9, -0x1

    move v7, v9

    .line 228
    sget-object v9, Landroid/support/v7/widget/TintManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    move v10, v1

    invoke-static {v9, v10}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 229
    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    move v6, v9

    .line 230
    const/4 v9, 0x1

    move v5, v9

    .line 244
    :cond_1
    :goto_1
    move v9, v5

    if-eqz v9, :cond_6

    .line 245
    move-object v9, v3

    move v10, v6

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    move v8, v9

    .line 246
    move-object v9, v2

    move v10, v8

    move-object v11, v4

    invoke-static {v10, v11}, Landroid/support/v7/widget/TintManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 248
    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 249
    move-object v9, v2

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 256
    :cond_2
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 231
    :cond_3
    sget-object v9, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    move v10, v1

    invoke-static {v9, v10}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 232
    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    move v6, v9

    .line 233
    const/4 v9, 0x1

    move v5, v9

    goto :goto_1

    .line 234
    :cond_4
    sget-object v9, Landroid/support/v7/widget/TintManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    move v10, v1

    invoke-static {v9, v10}, Landroid/support/v7/widget/TintManager;->arrayContains([II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 235
    const v9, 0x1010031

    move v6, v9

    .line 236
    const/4 v9, 0x1

    move v5, v9

    .line 237
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v4, v9

    goto :goto_1

    .line 238
    :cond_5
    move v9, v1

    sget v10, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne v9, v10, :cond_1

    .line 239
    const v9, 0x1010030

    move v6, v9

    .line 240
    const/4 v9, 0x1

    move v5, v9

    .line 241
    const v9, 0x42233333    # 40.8f

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v7, v9

    goto :goto_1

    .line 258
    :cond_6
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0
.end method
