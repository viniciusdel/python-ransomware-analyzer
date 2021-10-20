.class Landroid/support/v7/widget/SwitchCompat$1;
.super Ljava/lang/Object;
.source "SwitchCompat.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$newCheckedState:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;Z)V
    .locals 5

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 761
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v2}, Landroid/support/v7/widget/SwitchCompat;->access$100(Landroid/support/v7/widget/SwitchCompat;)Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 763
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->access$200(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 764
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->access$102(Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;)Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    move-result-object v2

    .line 766
    :cond_0
    return-void

    .line 763
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 757
    return-void
.end method
