.class Landroid/support/design/widget/ValueAnimatorCompat$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompat;

.field final synthetic val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/ValueAnimatorCompat$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/ValueAnimatorCompat$1;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat$1;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;->onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 134
    return-void
.end method
