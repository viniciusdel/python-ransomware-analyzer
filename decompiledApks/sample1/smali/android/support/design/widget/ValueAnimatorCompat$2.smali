.class Landroid/support/design/widget/ValueAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/ValueAnimatorCompat;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompat;

.field final synthetic val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 157
    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 152
    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationStart(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 147
    return-void
.end method
