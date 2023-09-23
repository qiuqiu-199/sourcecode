.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;
.super Ljava/lang/Exception;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpResultException"
.end annotation


# instance fields
.field final mCode:I

.field final mResponse:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 664
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 665
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;->mCode:I

    .line 666
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;->mResponse:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$HttpResultException;---><init>(ILjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
