.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 12

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v7

    move-object v8, v3

    check-cast v8, Landroid/os/CancellationSignal;

    move v9, v2

    move-object v10, v4

    invoke-static {v10}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v10

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 51
    return-void
.end method

.method private static getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    move-object v0, v1

    return-object v0
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x0

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 70
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    move-object v0, v1

    goto :goto_0

    .line 72
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    move-object v0, v1

    goto :goto_0

    .line 74
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    move-object v0, v1

    goto :goto_0

    .line 77
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)V

    move-object v0, v1

    return-object v0
.end method

.method private static wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x0

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    move-object v0, v1

    goto :goto_0

    .line 58
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 59
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    move-object v0, v1

    goto :goto_0

    .line 60
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    move-object v0, v1

    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method
