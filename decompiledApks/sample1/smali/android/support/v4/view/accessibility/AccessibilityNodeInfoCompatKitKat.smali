.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$RangeInfo;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static canOpenPopup(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canOpenPopup()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getInputType(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getInputType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static getLiveRegion(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isContentInvalid(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isDismissable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isMultiLine(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 62
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 67
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 85
    return-void
.end method

.method public static setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 45
    return-void
.end method

.method public static setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 50
    return-void
.end method

.method public static setContentInvalid(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 73
    return-void
.end method

.method public static setDismissable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 105
    return-void
.end method

.method public static setInputType(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 97
    return-void
.end method

.method static setLiveRegion(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 32
    return-void
.end method

.method public static setMultiLine(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 113
    return-void
.end method

.method public static setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 58
    return-void
.end method
