.class Lcom/keepassdroid/crypto/NativeAESCipherSpi$Cleanup;
.super Ljava/lang/Object;
.source "NativeAESCipherSpi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/crypto/NativeAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cleanup"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/crypto/NativeAESCipherSpi$1;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/keepassdroid/crypto/NativeAESCipherSpi$Cleanup;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 85
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->access$100()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->access$300(J)V

    const-string v2, "KeePassDroid"

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaned up cipher context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
