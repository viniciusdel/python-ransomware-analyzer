.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1877
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 1878
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    .line 1894
    :goto_0
    return-void

    .line 1879
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1880
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 1881
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1882
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 1883
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 1884
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 1885
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 1886
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 1887
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 1888
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 1889
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    .line 1890
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 1892
    :cond_6
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2251
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 2252
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    return-object v0
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3843
    move v0, p0

    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 3881
    const-string v1, "ACTION_UNKNOWN"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 3845
    :sswitch_0
    const-string v1, "ACTION_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3847
    :sswitch_1
    const-string v1, "ACTION_CLEAR_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3849
    :sswitch_2
    const-string v1, "ACTION_SELECT"

    move-object v0, v1

    goto :goto_0

    .line 3851
    :sswitch_3
    const-string v1, "ACTION_CLEAR_SELECTION"

    move-object v0, v1

    goto :goto_0

    .line 3853
    :sswitch_4
    const-string v1, "ACTION_CLICK"

    move-object v0, v1

    goto :goto_0

    .line 3855
    :sswitch_5
    const-string v1, "ACTION_LONG_CLICK"

    move-object v0, v1

    goto :goto_0

    .line 3857
    :sswitch_6
    const-string v1, "ACTION_ACCESSIBILITY_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3859
    :sswitch_7
    const-string v1, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    move-object v0, v1

    goto :goto_0

    .line 3861
    :sswitch_8
    const-string v1, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    move-object v0, v1

    goto :goto_0

    .line 3863
    :sswitch_9
    const-string v1, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    move-object v0, v1

    goto :goto_0

    .line 3865
    :sswitch_a
    const-string v1, "ACTION_NEXT_HTML_ELEMENT"

    move-object v0, v1

    goto :goto_0

    .line 3867
    :sswitch_b
    const-string v1, "ACTION_PREVIOUS_HTML_ELEMENT"

    move-object v0, v1

    goto :goto_0

    .line 3869
    :sswitch_c
    const-string v1, "ACTION_SCROLL_FORWARD"

    move-object v0, v1

    goto :goto_0

    .line 3871
    :sswitch_d
    const-string v1, "ACTION_SCROLL_BACKWARD"

    move-object v0, v1

    goto :goto_0

    .line 3873
    :sswitch_e
    const-string v1, "ACTION_CUT"

    move-object v0, v1

    goto :goto_0

    .line 3875
    :sswitch_f
    const-string v1, "ACTION_COPY"

    move-object v0, v1

    goto :goto_0

    .line 3877
    :sswitch_10
    const-string v1, "ACTION_PASTE"

    move-object v0, v1

    goto :goto_0

    .line 3879
    :sswitch_11
    const-string v1, "ACTION_SET_SELECTION"

    move-object v0, v1

    goto :goto_0

    .line 3843
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 2293
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 2304
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 2269
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 2283
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 2238
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 2239
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 2241
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addAction(I)V
    .locals 5

    .prologue
    .line 2497
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;I)V

    .line 2498
    return-void
.end method

.method public addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .locals 5

    .prologue
    .line 2512
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->access$100(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2513
    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2419
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    .line 2420
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 2437
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2438
    return-void
.end method

.method public canOpenPopup()Z
    .locals 3

    .prologue
    .line 3405
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->canOpenPopup(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 3778
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 3779
    const/4 v3, 0x1

    move v0, v3

    .line 3795
    :goto_0
    return v0

    .line 3781
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 3782
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3784
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 3785
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3787
    :cond_2
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v2, v3

    .line 3788
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 3789
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 3790
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3792
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3793
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3795
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2605
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 2606
    sget-object v7, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 2607
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 2608
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 2609
    move-object v7, v3

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 2610
    move-object v7, v2

    new-instance v8, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-direct {v9, v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 2608
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2612
    :cond_0
    move-object v7, v2

    move-object v0, v7

    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3445
    move-object v0, p0

    move-object v1, p1

    sget-object v6, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 3446
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 3447
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 3448
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 3449
    move-object v6, v3

    new-instance v7, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v5

    invoke-direct {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 3450
    goto :goto_0

    .line 3451
    :cond_0
    move-object v6, v3

    move-object v0, v6

    .line 3453
    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 2351
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findFocus(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public focusSearch(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 2369
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getActionList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3244
    move-object v0, p0

    sget-object v6, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActionList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v1, v6

    .line 3245
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 3246
    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 3247
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 3248
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 3249
    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 3250
    move-object v6, v2

    new-instance v7, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 3248
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3252
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .line 3254
    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public getActions()I
    .locals 3

    .prologue
    .line 2482
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActions(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 2673
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2674
    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 2697
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2698
    return-void
.end method

.method public getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 2404
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getChildCount()I
    .locals 3

    .prologue
    .line 2387
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChildCount(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 3035
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCollectionInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .locals 7

    .prologue
    .line 3188
    move-object v0, p0

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 3189
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 3190
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getCollectionItemInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 7

    .prologue
    .line 3208
    move-object v0, p0

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 3209
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 3210
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 3083
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 3305
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getError(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 3471
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2258
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getInputType()I
    .locals 3

    .prologue
    .line 3480
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getInputType(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLabelFor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 3348
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLabeledBy()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 3396
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLiveRegion()I
    .locals 3

    .prologue
    .line 3162
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLiveRegion(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMaxTextLength()I
    .locals 3

    .prologue
    .line 3526
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getMaxTextLength(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMovementGranularities()I
    .locals 3

    .prologue
    .line 2588
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getMovementGranularities(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 3011
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 2626
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getRangeInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
    .locals 7

    .prologue
    .line 3219
    move-object v0, p0

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 3220
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 3221
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 3059
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 3

    .prologue
    .line 3561
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTextSelectionEnd(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTextSelectionStart()I
    .locals 3

    .prologue
    .line 3552
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTextSelectionStart(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTraversalAfter()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 3631
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTraversalBefore()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 3574
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3140
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getWindow()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    .prologue
    .line 3684
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getWindowId()I
    .locals 3

    .prologue
    .line 2378
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3773
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 3

    .prologue
    .line 2842
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isCheckable()Z
    .locals 3

    .prologue
    .line 2721
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCheckable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .prologue
    .line 2745
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isClickable()Z
    .locals 3

    .prologue
    .line 2891
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isClickable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isContentInvalid()Z
    .locals 3

    .prologue
    .line 3280
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isDismissable()Z
    .locals 3

    .prologue
    .line 3693
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isDismissable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isEditable()Z
    .locals 3

    .prologue
    .line 3716
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEditable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 2939
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isFocusable()Z
    .locals 3

    .prologue
    .line 2769
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocusable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isFocused()Z
    .locals 3

    .prologue
    .line 2793
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isLongClickable()Z
    .locals 3

    .prologue
    .line 2915
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isLongClickable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isMultiLine()Z
    .locals 3

    .prologue
    .line 3741
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isMultiLine(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isPassword()Z
    .locals 3

    .prologue
    .line 2963
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isScrollable()Z
    .locals 3

    .prologue
    .line 2987
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isSelected()Z
    .locals 3

    .prologue
    .line 2867
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isSelected(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 3

    .prologue
    .line 2817
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public performAction(I)Z
    .locals 5

    .prologue
    .line 2546
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 2563
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 3109
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->recycle(Ljava/lang/Object;)V

    .line 3110
    return-void
.end method

.method public refresh()Z
    .locals 3

    .prologue
    .line 3768
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->refresh(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public removeAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
    .locals 5

    .prologue
    .line 2530
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->access$100(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public removeChild(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 2455
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeChild(Ljava/lang/Object;Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .locals 7

    .prologue
    .line 2469
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeChild(Ljava/lang/Object;Landroid/view/View;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public setAccessibilityFocused(Z)V
    .locals 5

    .prologue
    .line 2858
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setAccessibilityFocused(Ljava/lang/Object;Z)V

    .line 2859
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 2688
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2689
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 2712
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 2713
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .locals 5

    .prologue
    .line 3419
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCanOpenPopup(Ljava/lang/Object;Z)V

    .line 3420
    return-void
.end method

.method public setCheckable(Z)V
    .locals 5

    .prologue
    .line 2736
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCheckable(Ljava/lang/Object;Z)V

    .line 2737
    return-void
.end method

.method public setChecked(Z)V
    .locals 5

    .prologue
    .line 2760
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setChecked(Ljava/lang/Object;Z)V

    .line 2761
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 3050
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3051
    return-void
.end method

.method public setClickable(Z)V
    .locals 5

    .prologue
    .line 2906
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClickable(Ljava/lang/Object;Z)V

    .line 2907
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 3194
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3195
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 3198
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->access$300(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3199
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 3098
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3099
    return-void
.end method

.method public setContentInvalid(Z)V
    .locals 5

    .prologue
    .line 3270
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentInvalid(Ljava/lang/Object;Z)V

    .line 3271
    return-void
.end method

.method public setDismissable(Z)V
    .locals 5

    .prologue
    .line 3707
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setDismissable(Ljava/lang/Object;Z)V

    .line 3708
    return-void
.end method

.method public setEditable(Z)V
    .locals 5

    .prologue
    .line 3732
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEditable(Ljava/lang/Object;Z)V

    .line 3733
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    .prologue
    .line 2954
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEnabled(Ljava/lang/Object;Z)V

    .line 2955
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 3296
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3297
    return-void
.end method

.method public setFocusable(Z)V
    .locals 5

    .prologue
    .line 2784
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocusable(Ljava/lang/Object;Z)V

    .line 2785
    return-void
.end method

.method public setFocused(Z)V
    .locals 5

    .prologue
    .line 2808
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocused(Ljava/lang/Object;Z)V

    .line 2809
    return-void
.end method

.method public setInputType(I)V
    .locals 5

    .prologue
    .line 3497
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setInputType(Ljava/lang/Object;I)V

    .line 3498
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 3315
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabelFor(Ljava/lang/Object;Landroid/view/View;)V

    .line 3316
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 3333
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V

    .line 3334
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 3358
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V

    .line 3359
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 3381
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V

    .line 3382
    return-void
.end method

.method public setLiveRegion(I)V
    .locals 5

    .prologue
    .line 3178
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLiveRegion(Ljava/lang/Object;I)V

    .line 3179
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 5

    .prologue
    .line 2930
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLongClickable(Ljava/lang/Object;Z)V

    .line 2931
    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 5

    .prologue
    .line 3516
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMaxTextLength(Ljava/lang/Object;I)V

    .line 3517
    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 5

    .prologue
    .line 2579
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMovementGranularities(Ljava/lang/Object;I)V

    .line 2580
    return-void
.end method

.method public setMultiLine(Z)V
    .locals 5

    .prologue
    .line 3755
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMultiLine(Ljava/lang/Object;Z)V

    .line 3756
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 3026
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3027
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2641
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    .line 2642
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 2664
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2665
    return-void
.end method

.method public setPassword(Z)V
    .locals 5

    .prologue
    .line 2978
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPassword(Ljava/lang/Object;Z)V

    .line 2979
    return-void
.end method

.method public setRangeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V
    .locals 5

    .prologue
    .line 3235
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->access$600(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3236
    return-void
.end method

.method public setScrollable(Z)V
    .locals 5

    .prologue
    .line 3002
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setScrollable(Ljava/lang/Object;Z)V

    .line 3003
    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .prologue
    .line 2882
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSelected(Ljava/lang/Object;Z)V

    .line 2883
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2313
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 2314
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 2336
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2337
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 3074
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3075
    return-void
.end method

.method public setTextSelection(II)V
    .locals 7

    .prologue
    .line 3543
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTextSelection(Ljava/lang/Object;II)V

    .line 3544
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 3649
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V

    .line 3650
    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 3673
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V

    .line 3674
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 3592
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V

    .line 3593
    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 3617
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V

    .line 3618
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 3124
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3125
    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 5

    .prologue
    .line 2833
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setVisibleToUser(Ljava/lang/Object;Z)V

    .line 2834
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 3800
    move-object v0, p0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 3801
    move-object v5, v1

    move-object v6, v0

    invoke-super {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3803
    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v5

    .line 3805
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3806
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "; boundsInParent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3808
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3809
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "; boundsInScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3811
    move-object v5, v1

    const-string v6, "; packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3812
    move-object v5, v1

    const-string v6, "; className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3813
    move-object v5, v1

    const-string v6, "; text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3814
    move-object v5, v1

    const-string v6, "; contentDescription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3815
    move-object v5, v1

    const-string v6, "; viewId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3817
    move-object v5, v1

    const-string v6, "; checkable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3818
    move-object v5, v1

    const-string v6, "; checked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3819
    move-object v5, v1

    const-string v6, "; focusable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3820
    move-object v5, v1

    const-string v6, "; focused: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3821
    move-object v5, v1

    const-string v6, "; selected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3822
    move-object v5, v1

    const-string v6, "; clickable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3823
    move-object v5, v1

    const-string v6, "; longClickable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3824
    move-object v5, v1

    const-string v6, "; enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3825
    move-object v5, v1

    const-string v6, "; password: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3826
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "; scrollable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3828
    move-object v5, v1

    const-string v6, "; ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3829
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 3830
    const/4 v5, 0x1

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    shl-int/2addr v5, v6

    move v4, v5

    .line 3831
    move v5, v3

    move v6, v4

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 3832
    move-object v5, v1

    move v6, v4

    invoke-static {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3833
    move v5, v3

    if-eqz v5, :cond_0

    .line 3834
    move-object v5, v1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3836
    :cond_0
    goto :goto_0

    .line 3837
    :cond_1
    move-object v5, v1

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3839
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
