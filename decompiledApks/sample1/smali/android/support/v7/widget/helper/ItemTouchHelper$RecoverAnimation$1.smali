.class Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorUpdateListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 5

    .prologue
    .line 2263
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;->val$this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 2266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v3, v1

    invoke-interface {v3}, Landroid/support/v4/animation/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2267
    return-void
.end method
