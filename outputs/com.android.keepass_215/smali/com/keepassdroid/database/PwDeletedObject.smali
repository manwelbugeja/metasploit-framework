.class public Lcom/keepassdroid/database/PwDeletedObject;
.super Ljava/lang/Object;
.source "PwDeletedObject.java"


# instance fields
.field private deletionTime:Ljava/util/Date;

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/database/PwDeletedObject;-><init>(Ljava/util/UUID;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/Date;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/keepassdroid/database/PwDeletedObject;->uuid:Ljava/util/UUID;

    .line 39
    iput-object p2, p0, Lcom/keepassdroid/database/PwDeletedObject;->deletionTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 62
    :cond_1
    instance-of v1, p1, Lcom/keepassdroid/database/PwDeletedObject;

    if-nez v1, :cond_2

    return v0

    .line 66
    :cond_2
    check-cast p1, Lcom/keepassdroid/database/PwDeletedObject;

    .line 68
    iget-object v0, p0, Lcom/keepassdroid/database/PwDeletedObject;->uuid:Ljava/util/UUID;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDeletedObject;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDeletionTime()Ljava/util/Date;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/keepassdroid/database/PwDeletedObject;->deletionTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_0
    return-object v0
.end method

.method public setDeletionTime(Ljava/util/Date;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/keepassdroid/database/PwDeletedObject;->deletionTime:Ljava/util/Date;

    return-void
.end method
