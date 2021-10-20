.class Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$5;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7$5;)V
    .locals 4

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 731
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 732
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 733
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 734
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 739
    return-void
.end method
