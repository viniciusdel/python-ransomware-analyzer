.class Landroid/support/v7/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/TintContextWrapper$TintResources;
    }
.end annotation


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v7/widget/TintContextWrapper;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Landroid/support/v7/widget/TintContextWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 34
    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 46
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/TintContextWrapper$TintResources;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-super {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/TintContextWrapper$TintResources;-><init>(Landroid/content/res/Resources;Landroid/support/v7/widget/TintManager;)V

    iput-object v2, v1, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 48
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    move-object v0, v1

    return-object v0
.end method
