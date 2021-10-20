.class Landroid/support/v7/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
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
    .line 943
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 946
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$400(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 947
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$500(Landroid/support/v7/widget/SearchView;)V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$600(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 949
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$700(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 950
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$800(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 951
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$900(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 952
    :cond_3
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$1000(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 953
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$1100(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 954
    :cond_4
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v3}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 955
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v2}, Landroid/support/v7/widget/SearchView;->access$1300(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0
.end method
