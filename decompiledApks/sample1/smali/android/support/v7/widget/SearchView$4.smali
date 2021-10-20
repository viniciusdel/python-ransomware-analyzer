.class Landroid/support/v7/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 333
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 335
    :cond_0
    return-void
.end method
