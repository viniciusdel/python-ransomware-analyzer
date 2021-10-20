.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 4

    .prologue
    .line 780
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 783
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->access$600(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 792
    :goto_0
    return-void

    .line 786
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 790
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-static {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->access$701(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    goto :goto_0
.end method
