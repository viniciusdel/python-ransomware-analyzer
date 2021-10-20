.class Landroid/support/v7/app/AppCompatDelegateImplV7$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;->createSubDecor()Landroid/view/ViewGroup;
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
    .line 465
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$400(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    .line 472
    return-void
.end method
