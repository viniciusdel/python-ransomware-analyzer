.class Landroid/support/v4/view/ViewCompatICSMr1;
.super Ljava/lang/Object;
.source "ViewCompatICSMr1.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    move v0, v1

    return v0
.end method
