.class Landroid/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v4}, Landroid/support/v7/app/AlertController;->access$000(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v4

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 121
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    .line 130
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 131
    move-object v3, v2

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 135
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$700(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void

    .line 122
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v4}, Landroid/support/v7/app/AlertController;->access$200(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 123
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 124
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v4}, Landroid/support/v7/app/AlertController;->access$400(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v4

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 125
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 127
    :cond_3
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0
.end method
