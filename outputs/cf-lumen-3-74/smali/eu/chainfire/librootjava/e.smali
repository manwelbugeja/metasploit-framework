.class public Leu/chainfire/librootjava/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "allow appdomain supersu binder { call transfer }"

    const-string v1, "allow appdomain magisk binder { call transfer }"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/librootjava/e;->a:[Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Leu/chainfire/librootjava/e;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Leu/chainfire/librootjava/e;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supolicy --live"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Leu/chainfire/librootjava/e;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, " \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " >/dev/null 2>/dev/null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Leu/chainfire/librootjava/e;->b:Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Leu/chainfire/librootjava/e;->b:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method
