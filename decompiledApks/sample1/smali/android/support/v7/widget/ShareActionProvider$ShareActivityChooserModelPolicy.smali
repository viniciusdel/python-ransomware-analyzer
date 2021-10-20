.class Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v3}, Landroid/support/v7/widget/ShareActionProvider;->access$500(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 354
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v3}, Landroid/support/v7/widget/ShareActionProvider;->access$500(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)Z

    move-result v3

    .line 357
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method
