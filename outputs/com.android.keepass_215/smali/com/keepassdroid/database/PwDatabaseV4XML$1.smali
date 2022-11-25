.class Lcom/keepassdroid/database/PwDatabaseV4XML$1;
.super Ljava/lang/ThreadLocal;
.source "PwDatabaseV4XML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwDatabaseV4XML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4XML$1;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 137
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 138
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
