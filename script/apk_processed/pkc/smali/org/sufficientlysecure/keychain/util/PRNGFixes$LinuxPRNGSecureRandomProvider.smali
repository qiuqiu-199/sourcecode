.class Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandomProvider;
.super Ljava/security/Provider;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/util/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxPRNGSecureRandomProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    move-object/16 v4, p0

    const-string v0, "LinuxPRNG"

    const-string v1, "A Linux-specific random number provider that uses /dev/urandom"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 181
    invoke-direct {v4, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "SecureRandom.SHA1PRNG"

    .line 189
    const-class v1, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    .line 190
    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/PRNGFixes$LinuxPRNGSecureRandomProvider;---><init>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
