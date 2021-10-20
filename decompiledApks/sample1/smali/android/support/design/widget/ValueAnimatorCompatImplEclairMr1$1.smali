.class Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompatImplEclairMr1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;

    invoke-static {v1}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->access$000(Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;)V

    .line 188
    return-void
.end method
