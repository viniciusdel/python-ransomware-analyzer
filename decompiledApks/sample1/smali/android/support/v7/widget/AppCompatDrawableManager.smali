.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final TAG:Ljava/lang/String; = "TintManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 78
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 84
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

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 94
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

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 113
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

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 124
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

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 134
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

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 152
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

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v5, :cond_0

    .line 344
    move-object v5, v0

    new-instance v6, Ljava/util/WeakHashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 346
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move-object v4, v5

    .line 347
    move-object v5, v4

    if-nez v5, :cond_1

    .line 348
    new-instance v5, Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v5

    .line 349
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 351
    :cond_1
    move-object v5, v4

    move v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 352
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 8

    .prologue
    .line 278
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

    .line 279
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 280
    const/4 v6, 0x1

    move v0, v6

    .line 283
    :goto_1
    return v0

    .line 278
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 13

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v8, 0x4

    new-array v8, v8, [[I

    move-object v3, v8

    .line 522
    const/4 v8, 0x4

    new-array v8, v8, [I

    move-object v4, v8

    .line 523
    const/4 v8, 0x0

    move v5, v8

    .line 525
    move-object v8, v1

    move v9, v2

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v6, v8

    .line 526
    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v7, v8

    .line 529
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 530
    move-object v8, v4

    move v9, v5

    move-object v10, v1

    sget v11, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {v10, v11}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v10

    aput v10, v8, v9

    .line 531
    add-int/lit8 v5, v5, 0x1

    .line 533
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 534
    move-object v8, v4

    move v9, v5

    move v10, v7

    move v11, v6

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    aput v10, v8, v9

    .line 535
    add-int/lit8 v5, v5, 0x1

    .line 537
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 538
    move-object v8, v4

    move v9, v5

    move v10, v7

    move v11, v6

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    aput v10, v8, v9

    .line 539
    add-int/lit8 v5, v5, 0x1

    .line 542
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v10, v8, v9

    .line 543
    move-object v8, v4

    move v9, v5

    move v10, v6

    aput v10, v8, v9

    .line 544
    add-int/lit8 v5, v5, 0x1

    .line 546
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
    .line 401
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 402
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 403
    const/4 v5, 0x0

    move v4, v5

    .line 406
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 407
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 408
    add-int/lit8 v4, v4, 0x1

    .line 410
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 411
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 412
    add-int/lit8 v4, v4, 0x1

    .line 415
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 416
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 417
    add-int/lit8 v4, v4, 0x1

    .line 419
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
    .line 517
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 12

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    move v2, v7

    .line 361
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    move v3, v7

    .line 363
    const/4 v7, 0x7

    new-array v7, v7, [[I

    move-object v4, v7

    .line 364
    const/4 v7, 0x7

    new-array v7, v7, [I

    move-object v5, v7

    .line 365
    const/4 v7, 0x0

    move v6, v7

    .line 368
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 369
    move-object v7, v5

    move v8, v6

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    aput v9, v7, v8

    .line 370
    add-int/lit8 v6, v6, 0x1

    .line 372
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 373
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 374
    add-int/lit8 v6, v6, 0x1

    .line 376
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 377
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 378
    add-int/lit8 v6, v6, 0x1

    .line 380
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 381
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 382
    add-int/lit8 v6, v6, 0x1

    .line 384
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 385
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 386
    add-int/lit8 v6, v6, 0x1

    .line 388
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    aput-object v9, v7, v8

    .line 389
    move-object v7, v5

    move v8, v6

    move v9, v3

    aput v9, v7, v8

    .line 390
    add-int/lit8 v6, v6, 0x1

    .line 393
    move-object v7, v4

    move v8, v6

    sget-object v9, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v9, v7, v8

    .line 394
    move-object v7, v5

    move v8, v6

    move v9, v2

    aput v9, v7, v8

    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 397
    new-instance v7, Landroid/content/res/ColorStateList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v7

    return-object v0
.end method

.method private createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 492
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 493
    const/4 v5, 0x0

    move v4, v5

    .line 496
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 497
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 498
    add-int/lit8 v4, v4, 0x1

    .line 500
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 501
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 505
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 506
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 507
    add-int/lit8 v4, v4, 0x1

    .line 509
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
    .line 571
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x2

    new-array v5, v5, [[I

    move-object v2, v5

    .line 572
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 573
    const/4 v5, 0x0

    move v4, v5

    .line 576
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 577
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 578
    add-int/lit8 v4, v4, 0x1

    .line 580
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 581
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 582
    add-int/lit8 v4, v4, 0x1

    .line 584
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
    .line 550
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 551
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 552
    const/4 v5, 0x0

    move v4, v5

    .line 555
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 556
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 557
    add-int/lit8 v4, v4, 0x1

    .line 559
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 560
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 561
    add-int/lit8 v4, v4, 0x1

    .line 563
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 564
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v7, v8}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    .line 565
    add-int/lit8 v4, v4, 0x1

    .line 567
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
    .line 445
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x3

    new-array v6, v6, [[I

    move-object v2, v6

    .line 446
    const/4 v6, 0x3

    new-array v6, v6, [I

    move-object v3, v6

    .line 447
    const/4 v6, 0x0

    move v4, v6

    .line 449
    move-object v6, v1

    sget v7, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v6, v7}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    .line 452
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 457
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 458
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

    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 461
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 462
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 463
    add-int/lit8 v4, v4, 0x1

    .line 466
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v8, v6, v7

    .line 467
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    aput v8, v6, v7

    .line 468
    add-int/lit8 v4, v4, 0x1

    .line 487
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

    .line 473
    :cond_0
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 474
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 475
    add-int/lit8 v4, v4, 0x1

    .line 477
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 478
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 479
    add-int/lit8 v4, v4, 0x1

    .line 482
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v8, v6, v7

    .line 483
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 11

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x3

    new-array v5, v5, [[I

    move-object v2, v5

    .line 424
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v3, v5

    .line 425
    const/4 v5, 0x0

    move v4, v5

    .line 428
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 429
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    const v8, 0x1010030

    const v9, 0x3dcccccd    # 0.1f

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v7

    aput v7, v5, v6

    .line 430
    add-int/lit8 v4, v4, 0x1

    .line 432
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 433
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v7

    aput v7, v5, v6

    .line 434
    add-int/lit8 v4, v4, 0x1

    .line 437
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 438
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    const v8, 0x1010030

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v7

    aput v7, v5, v6

    .line 439
    add-int/lit8 v4, v4, 0x1

    .line 441
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
    .line 659
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 660
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 663
    :goto_0
    return-object v0

    .line 662
    :cond_1
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 663
    move v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .locals 3

    .prologue
    .line 72
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 75
    :cond_0
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    return-object v0
.end method

.method private static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 8

    .prologue
    .line 668
    move v0, p0

    move-object v1, p1

    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    move-object v2, v3

    .line 670
    move-object v3, v2

    if-nez v3, :cond_0

    .line 672
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 673
    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    .line 676
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v4, :cond_1

    .line 335
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move-object v3, v4

    .line 336
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v4

    .line 338
    :goto_1
    return-object v0

    .line 336
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 680
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    if-nez v5, :cond_0

    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 681
    return-void

    .line 680
    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method private static shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 9

    .prologue
    .line 632
    move-object v0, p0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    .line 634
    const/4 v7, 0x1

    move v0, v7

    .line 654
    :goto_0
    return v0

    .line 637
    :cond_0
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_2

    .line 638
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

    .line 639
    :cond_2
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v7, :cond_4

    .line 640
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

    .line 641
    :cond_4
    move-object v7, v0

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v7, :cond_6

    .line 643
    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    move-object v1, v7

    .line 644
    move-object v7, v1

    instance-of v7, v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v7, :cond_6

    .line 645
    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v2, v7

    .line 647
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

    .line 648
    move-object v7, v6

    invoke-static {v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 649
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 647
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 654
    :cond_6
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 7

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 611
    const-string v3, "TintManager"

    const-string v4, "Mutated drawable is not the same instance as the input."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 629
    :goto_0
    return-void

    .line 615
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_1

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_5

    .line 616
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

    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 624
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_2

    .line 627
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 629
    :cond_2
    goto :goto_0

    .line 616
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 621
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method


# virtual methods
.method public addDelegate(Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 6
    .param p1    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 264
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    .line 266
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 269
    :cond_1
    return-void
.end method

.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 168
    const/4 v8, 0x0

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    :goto_0
    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 169
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    move-object v6, v8

    .line 170
    move-object v8, v6

    move-object v9, v1

    move v10, v2

    invoke-interface {v8, v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->onInflateDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v7, v8

    .line 171
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 172
    move-object v8, v7

    move-object v0, v8

    .line 219
    :goto_1
    return-object v0

    .line 168
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_1
    move-object v8, v1

    move v9, v2

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v4, v8

    .line 180
    move-object v8, v4

    if-eqz v8, :cond_3

    .line 181
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-lt v8, v9, :cond_2

    .line 183
    move-object v8, v4

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v4, v8

    .line 186
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    move-object v5, v8

    .line 187
    move-object v8, v5

    if-eqz v8, :cond_4

    .line 189
    move-object v8, v4

    invoke-static {v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v4, v8

    .line 190
    move-object v8, v4

    move-object v9, v5

    invoke-static {v8, v9}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 193
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    move-object v6, v8

    .line 194
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 195
    move-object v8, v4

    move-object v9, v6

    invoke-static {v8, v9}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 219
    :cond_3
    :goto_2
    move-object v8, v4

    move-object v0, v8

    goto :goto_1

    .line 197
    :cond_4
    move v8, v2

    sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne v8, v9, :cond_5

    .line 198
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v0

    move-object v14, v1

    sget v15, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move-object v13, v0

    move-object v14, v1

    sget v15, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v8

    goto :goto_1

    .line 202
    :cond_5
    move v8, v2

    sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne v8, v9, :cond_6

    .line 203
    move-object v8, v4

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v8

    .line 204
    move-object v8, v6

    const/high16 v9, 0x1020000

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    sget-object v10, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    move-object v8, v6

    const v9, 0x102000f

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    sget-object v10, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    move-object v8, v6

    const v9, 0x102000d

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    sget-object v10, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 210
    goto :goto_2

    .line 211
    :cond_6
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v8

    move v6, v8

    .line 212
    move v8, v6

    if-nez v8, :cond_3

    move v8, v3

    if-eqz v8, :cond_3

    .line 215
    const/4 v8, 0x0

    move-object v4, v8

    goto/16 :goto_2
.end method

.method public final getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    .line 300
    move-object v4, v3

    if-nez v4, :cond_1

    .line 302
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne v4, v5, :cond_2

    .line 303
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    .line 326
    :cond_0
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 327
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 330
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 304
    :cond_2
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne v4, v5, :cond_3

    .line 305
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 306
    :cond_3
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v4, v5, :cond_4

    .line 307
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 308
    :cond_4
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-eq v4, v5, :cond_5

    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne v4, v5, :cond_6

    .line 310
    :cond_5
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 311
    :cond_6
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne v4, v5, :cond_7

    .line 312
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 313
    :cond_7
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq v4, v5, :cond_8

    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne v4, v5, :cond_9

    .line 315
    :cond_8
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 316
    :cond_9
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 317
    move-object v4, v1

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v4, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 318
    :cond_a
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 319
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 320
    :cond_b
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 321
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 322
    :cond_c
    move v4, v2

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne v4, v5, :cond_0

    .line 323
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 5

    .prologue
    .line 287
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 289
    move v3, v1

    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v3, v4, :cond_0

    .line 290
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v2, v3

    .line 293
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public removeDelegate(Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 273
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 275
    :cond_0
    return-void
.end method

.method public final tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    move-object v4, v9

    .line 225
    const/4 v9, 0x0

    move v5, v9

    .line 226
    const/4 v9, 0x0

    move v6, v9

    .line 227
    const/4 v9, -0x1

    move v7, v9

    .line 229
    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    move v10, v2

    invoke-static {v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 230
    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    move v6, v9

    .line 231
    const/4 v9, 0x1

    move v5, v9

    .line 245
    :cond_0
    :goto_0
    move v9, v5

    if-eqz v9, :cond_5

    .line 246
    move-object v9, v1

    move v10, v6

    invoke-static {v9, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    move v8, v9

    .line 247
    move-object v9, v3

    move v10, v8

    move-object v11, v4

    invoke-static {v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 250
    move-object v9, v3

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    :cond_1
    const/4 v9, 0x1

    move v0, v9

    .line 259
    :goto_1
    return v0

    .line 232
    :cond_2
    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    move v10, v2

    invoke-static {v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 233
    sget v9, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    move v6, v9

    .line 234
    const/4 v9, 0x1

    move v5, v9

    goto :goto_0

    .line 235
    :cond_3
    sget-object v9, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    move v10, v2

    invoke-static {v9, v10}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 236
    const v9, 0x1010031

    move v6, v9

    .line 237
    const/4 v9, 0x1

    move v5, v9

    .line 238
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v4, v9

    goto :goto_0

    .line 239
    :cond_4
    move v9, v2

    sget v10, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne v9, v10, :cond_0

    .line 240
    const v9, 0x1010030

    move v6, v9

    .line 241
    const/4 v9, 0x1

    move v5, v9

    .line 242
    const v9, 0x42233333    # 40.8f

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v7, v9

    goto :goto_0

    .line 259
    :cond_5
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1
.end method
