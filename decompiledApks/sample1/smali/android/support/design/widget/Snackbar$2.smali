.class Landroid/support/design/widget/Snackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 297
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/design/widget/Snackbar;->access$000(Landroid/support/design/widget/Snackbar;I)V

    .line 298
    return-void
.end method
