.class Landroid/support/design/widget/FloatingActionButtonImpl$1;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPreDraw()V

    .line 127
    const/4 v1, 0x1

    move v0, v1

    return v0
.end method
