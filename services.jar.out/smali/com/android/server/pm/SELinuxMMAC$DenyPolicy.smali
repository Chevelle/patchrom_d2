.class Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;
.super Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DenyPolicy"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "seinfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, policyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, pkgPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 439
    return-void
.end method


# virtual methods
.method public passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    const-string v0, "deny-all"

    return-object v0
.end method
