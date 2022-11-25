.class public Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;
.super Ljava/lang/Object;
.source "PwDbHeaderV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwDbHeaderV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderAndHash"
.end annotation


# instance fields
.field public hash:[B

.field public header:[B

.field final synthetic this$0:Lcom/keepassdroid/database/PwDbHeaderV4;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwDbHeaderV4;[B[B)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;->this$0:Lcom/keepassdroid/database/PwDbHeaderV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;->header:[B

    .line 90
    iput-object p3, p0, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;->hash:[B

    return-void
.end method
