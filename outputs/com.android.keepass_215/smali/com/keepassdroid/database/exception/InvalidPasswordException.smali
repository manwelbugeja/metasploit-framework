.class public Lcom/keepassdroid/database/exception/InvalidPasswordException;
.super Lcom/keepassdroid/database/exception/InvalidDBException;
.source "InvalidPasswordException.java"


# static fields
.field private static final serialVersionUID:J = -0x79255455ce8fcc4fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/keepassdroid/database/exception/InvalidDBException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/exception/InvalidDBException;-><init>(Ljava/lang/String;)V

    return-void
.end method
