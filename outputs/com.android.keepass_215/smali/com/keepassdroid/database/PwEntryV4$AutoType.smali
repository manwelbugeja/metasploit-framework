.class public Lcom/keepassdroid/database/PwEntryV4$AutoType;
.super Ljava/lang/Object;
.source "PwEntryV4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwEntryV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoType"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OBF_OPT_NONE:J


# instance fields
.field public defaultSequence:Ljava/lang/String;

.field public enabled:Z

.field public obfuscationOptions:J

.field final synthetic this$0:Lcom/keepassdroid/database/PwEntryV4;

.field private windowSeqPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/keepassdroid/database/PwEntryV4;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwEntryV4;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->this$0:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->enabled:Z

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->obfuscationOptions:J

    const-string p1, ""

    .line 72
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->defaultSequence:Ljava/lang/String;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->windowSeqPairs:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 80
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4$AutoType;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->windowSeqPairs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->windowSeqPairs:Ljava/util/HashMap;

    return-object v0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->windowSeqPairs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->windowSeqPairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
