.class final Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$1;
.super Ljava/lang/Object;
.source "EmailKeyHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/util/EmailKeyHelper;->findKeyserverFromDns(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/measite/minidns/Record;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 125
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public compare(Lde/measite/minidns/Record;Lde/measite/minidns/Record;)I
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 128
    invoke-virtual {v3}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v0

    invoke-interface {v0}, Lde/measite/minidns/record/Data;->getType()Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    sget-object v1, Lde/measite/minidns/Record$TYPE;->SRV:Lde/measite/minidns/Record$TYPE;

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    return v3

    .line 129
    :cond_0
    invoke-virtual {v4}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v0

    invoke-interface {v0}, Lde/measite/minidns/record/Data;->getType()Lde/measite/minidns/Record$TYPE;

    move-result-object v0

    sget-object v1, Lde/measite/minidns/Record$TYPE;->SRV:Lde/measite/minidns/Record$TYPE;

    if-eq v0, v1, :cond_1

    const/4 v3, -0x1

    return v3

    .line 130
    :cond_1
    invoke-virtual {v3}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v3

    check-cast v3, Lde/measite/minidns/record/SRV;

    invoke-virtual {v3}, Lde/measite/minidns/record/SRV;->getPriority()I

    move-result v3

    invoke-virtual {v4}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v4

    check-cast v4, Lde/measite/minidns/record/SRV;

    invoke-virtual {v4}, Lde/measite/minidns/record/SRV;->getPriority()I

    move-result v4

    sub-int/2addr v3, v4

    return v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$1;--->compare(Lde/measite/minidns/Record;Lde/measite/minidns/Record;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Lde/measite/minidns/Record;

    check-cast p2, Lde/measite/minidns/Record;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/util/EmailKeyHelper$1;->compare(Lde/measite/minidns/Record;Lde/measite/minidns/Record;)I

    move-result p1

    return p1
.end method
