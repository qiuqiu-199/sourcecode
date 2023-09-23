.class public Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;
.super Ljava/lang/Object;
.source "SubkeyStatusDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeySubkeyStatus"
.end annotation


# instance fields
.field public final keyCertify:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

.field public final keyHealthStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public final keysEncrypt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;"
        }
    .end annotation
.end field

.field public final keysSign:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 169
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyCertify:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 171
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keysSign:Ljava/util/List;

    .line 172
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keysEncrypt:Ljava/util/List;

    .line 173
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;->keyHealthStatus:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
