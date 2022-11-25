.class public Lcom/keepassdroid/database/PwEntry$EntryNameComparator;
.super Ljava/lang/Object;
.source "PwEntry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keepassdroid/database/PwEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwEntry;)I
    .locals 0

    .line 36
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/keepassdroid/database/PwEntry;

    check-cast p2, Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwEntry$EntryNameComparator;->compare(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwEntry;)I

    move-result p1

    return p1
.end method
