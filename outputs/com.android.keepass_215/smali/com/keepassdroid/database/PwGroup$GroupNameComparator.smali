.class public Lcom/keepassdroid/database/PwGroup$GroupNameComparator;
.super Ljava/lang/Object;
.source "PwGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/keepassdroid/database/PwGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)I
    .locals 0

    .line 57
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroup;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwGroup;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lcom/keepassdroid/database/PwGroup;

    check-cast p2, Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwGroup$GroupNameComparator;->compare(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)I

    move-result p1

    return p1
.end method
