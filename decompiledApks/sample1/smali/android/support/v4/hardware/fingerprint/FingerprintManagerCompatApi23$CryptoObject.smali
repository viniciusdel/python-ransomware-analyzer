.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 115
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 116
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 120
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 121
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 122
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 127
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 128
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 129
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    move-object v0, v1

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    move-object v0, v1

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    move-object v0, v1

    return-object v0
.end method
