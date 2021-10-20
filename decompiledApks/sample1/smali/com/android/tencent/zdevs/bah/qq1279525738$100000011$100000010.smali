.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;
.super Ljava/lang/Object;
.source "qq1279525738.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000010"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;)Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;

    invoke-static {v4}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v4

    const v5, 0x7f02004e

    invoke-virtual {v4, v5}, Lcom/android/tencent/zdevs/bah/qq1279525738;->ewm(I)V

    return-void
.end method
