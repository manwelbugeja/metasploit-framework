.class public Lcom/keepassdroid/database/exception/PwDbOutputException;
.super Ljava/lang/Exception;
.source "PwDbOutputException.java"


# static fields
.field private static final serialVersionUID:J = 0x2e175164b38564d8L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
