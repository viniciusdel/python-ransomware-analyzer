.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeInfoCompat"
.end annotation


# static fields
.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 467
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V
    .locals 5

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getCurrent(Ljava/lang/Object;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMax()F
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getMax(Ljava/lang/Object;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMin()F
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getMin(Ljava/lang/Object;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;->getType(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method
