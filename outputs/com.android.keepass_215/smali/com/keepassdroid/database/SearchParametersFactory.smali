.class public Lcom/keepassdroid/database/SearchParametersFactory;
.super Ljava/lang/Object;
.source "SearchParametersFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/database/SearchParameters;
    .locals 0

    .line 31
    instance-of p0, p0, Lcom/keepassdroid/database/PwDatabase;

    if-eqz p0, :cond_0

    .line 32
    new-instance p0, Lcom/keepassdroid/database/SearchParametersV4;

    invoke-direct {p0}, Lcom/keepassdroid/database/SearchParametersV4;-><init>()V

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Lcom/keepassdroid/database/SearchParameters;

    invoke-direct {p0}, Lcom/keepassdroid/database/SearchParameters;-><init>()V

    return-object p0
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwGroup;)Lcom/keepassdroid/database/SearchParameters;
    .locals 0

    .line 40
    instance-of p0, p0, Lcom/keepassdroid/database/PwGroupV4;

    if-eqz p0, :cond_0

    .line 41
    new-instance p0, Lcom/keepassdroid/database/SearchParametersV4;

    invoke-direct {p0}, Lcom/keepassdroid/database/SearchParametersV4;-><init>()V

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Lcom/keepassdroid/database/SearchParameters;

    invoke-direct {p0}, Lcom/keepassdroid/database/SearchParameters;-><init>()V

    return-object p0
.end method

.method public static getNone(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/database/SearchParameters;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/keepassdroid/database/SearchParametersFactory;->getInstance(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/database/SearchParameters;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/keepassdroid/database/SearchParameters;->setupNone()V

    return-object p0
.end method
