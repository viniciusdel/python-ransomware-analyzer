.class Landroid/support/v7/app/AppCompatDelegateImplV7$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 4

    .prologue
    .line 720
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 722
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v3, 0x37

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 725
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$500(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    .line 726
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 727
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 728
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7$5;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 741
    return-void
.end method
